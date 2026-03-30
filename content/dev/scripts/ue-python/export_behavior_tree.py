import json
import unreal


def _obj_to_ref(obj):
    if obj is None:
        return None
    try:
        return unreal.ObjectPath.get_path_name(obj)
    except Exception:
        try:
            return obj.get_path_name()
        except Exception:
            try:
                return str(obj)
            except Exception:
                return None


def _is_simple(v):
    return v is None or isinstance(v, (bool, int, float, str))


def _serialize_value(v, depth=0, max_depth=4):
    if _is_simple(v):
        return v
    if depth >= max_depth:
        return str(v)

    # Unreal object
    if isinstance(v, unreal.Object):
        return {"$ref": _obj_to_ref(v), "$class": v.get_class().get_name()}

    # Struct-like
    try:
        if hasattr(v, "__class__") and v.__class__.__name__.endswith("Struct"):
            out = {"$struct": v.__class__.__name__}
            for name in dir(v):
                if name.startswith("_"):
                    continue
                try:
                    out[name] = _serialize_value(getattr(v, name), depth + 1, max_depth)
                except Exception:
                    continue
            return out
    except Exception:
        pass

    # Containers
    if isinstance(v, (list, tuple)):
        return [_serialize_value(x, depth + 1, max_depth) for x in v]
    if isinstance(v, dict):
        return {str(k): _serialize_value(val, depth + 1, max_depth) for k, val in v.items()}

    # Fallback
    return str(v)


def _get_prop(obj, name):
    try:
        return obj.get_editor_property(name)
    except Exception:
        try:
            return getattr(obj, name)
        except Exception:
            return None


def _serialize_bt_node(node, visited, idx_counter):
    if node is None:
        return None

    ref = _obj_to_ref(node)
    if ref in visited:
        return {"$ref": ref, "$cycle": True}
    visited.add(ref)

    node_id = f"{idx_counter[0]}"
    idx_counter[0] += 1

    node_class = None
    try:
        node_class = node.get_class().get_name()
    except Exception:
        node_class = type(node).__name__

    data = {
        "id": node_id,
        "ref": ref,
        "class": node_class,
        "name": getattr(node, "get_name", lambda: None)(),
        "children": [],
        "decorators": [],
        "services": [],
    }

    # Composite children layout (UBehaviorTree uses UBTCompositeNode children array of FBTCompositeChild)
    children = _get_prop(node, "children")
    if children:
        for ch in children:
            try:
                child_task = _get_prop(ch, "child_task")
                child_comp = _get_prop(ch, "child_composite")
                decorators = _get_prop(ch, "decorators") or []
                services = _get_prop(ch, "services") or []

                entry = {
                    "child_task": _serialize_bt_node(child_task, visited, idx_counter) if child_task else None,
                    "child_composite": _serialize_bt_node(child_comp, visited, idx_counter) if child_comp else None,
                    "decorators": [
                        {"ref": _obj_to_ref(d), "class": d.get_class().get_name(), "props": {}}
                        for d in decorators
                        if d is not None
                    ],
                    "services": [
                        {"ref": _obj_to_ref(s), "class": s.get_class().get_name(), "props": {}}
                        for s in services
                        if s is not None
                    ],
                }

                data["children"].append(entry)
            except Exception as e:
                data["children"].append({"error": str(e)})

    return data


def export_behavior_tree(asset_path: str):
    bt = unreal.EditorAssetLibrary.load_asset(asset_path)
    if bt is None:
        raise RuntimeError(f"Failed to load asset: {asset_path}")

    bb = None
    try:
        if hasattr(bt, "get_blackboard_asset"):
            bb = bt.get_blackboard_asset()
    except Exception:
        bb = None

    out = {
        "asset_path": asset_path,
        "class": bt.get_class().get_name(),
        "blackboard": _obj_to_ref(bb),
        "root_node": None,
        "limitations": [
            "BehaviorTree root/graph nodes are not accessible via this UE Python API in current build (protected properties). Use preview PNG for visual reference."
        ],
    }

    root = _get_prop(bt, "root_node")
    visited = set()
    idx_counter = [1]
    out["root_node"] = _serialize_bt_node(root, visited, idx_counter) if root else None
    out["node_count_estimate"] = idx_counter[0] - 1
    return out


def main():
    asset_path = None
    # Some environments expose unreal.get_mcp_args(), others don't.
    try:
        get_args = getattr(unreal, "get_mcp_args", None)
        if callable(get_args):
            args = get_args() or {}
            asset_path = args.get("asset_path")
    except Exception:
        asset_path = None

    if not asset_path:
        asset_path = globals().get("ASSET_PATH")
    if not asset_path:
        raise RuntimeError("Missing required argument: asset_path")
    result = export_behavior_tree(asset_path)
    print(json.dumps(result, ensure_ascii=False))


if __name__ == "__main__":
    main()

