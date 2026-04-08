import argparse
import json
import os
import time
import urllib.request
from pathlib import Path


def read_bridge_url(project_root: Path) -> str:
    env = os.environ.get("SOFT_UE_BRIDGE_URL")
    if env:
        return env
    inst = project_root / ".soft-ue-bridge" / "instance.json"
    if inst.exists():
        j = json.loads(inst.read_text(encoding="utf-8"))
        host = j.get("host") or "127.0.0.1"
        port = j.get("port")
        if port:
            return f"http://{host}:{port}/bridge"
    return "http://127.0.0.1:8080/bridge"


def post_json(url: str, payload: dict, timeout_s: int = 60) -> dict:
    data = json.dumps(payload).encode("utf-8")
    req = urllib.request.Request(
        url,
        data=data,
        headers={"Content-Type": "application/json"},
        method="POST",
    )
    with urllib.request.urlopen(req, timeout=timeout_s) as resp:
        raw = resp.read().decode("utf-8")
    return json.loads(raw)


def tool_call(server: str, name: str, arguments: dict, timeout_s: int = 120) -> dict:
    r = post_json(
        server,
        {"jsonrpc": "2.0", "id": f"call_{name}", "method": "tools/call", "params": {"name": name, "arguments": arguments}},
        timeout_s=timeout_s,
    )
    content = r["result"]["content"][0]
    if content["type"] != "json":
        raise RuntimeError(f"unexpected content type: {content['type']}")
    return content["json"]


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--project-root", required=True)
    ap.add_argument("--scope-path", default="/Game/System")
    ap.add_argument("--out", required=True, help="NDJSON output path")
    ap.add_argument("--semantic-level", default="minimal", choices=["off", "minimal", "standard", "full"])
    ap.add_argument("--node-limit", type=int, default=500)
    ap.add_argument("--limit", type=int, default=200000)
    args = ap.parse_args()

    project_root = Path(args.project_root)
    server = read_bridge_url(project_root)

    # Probe
    post_json(server, {"jsonrpc": "2.0", "id": "probe", "method": "tools/list"}, timeout_s=5)

    # Ensure index exists (best-effort, single call is enough for already-indexed scopes)
    tool_call(
        server,
        "bp-index-refresh",
        {
            "scope_path": args.scope_path,
            "levels": "L0L1L2",
            "batch_size": 50,
            "l2_projection": "connections",
            "l2_semantic_level": args.semantic_level,
            "resume_token": "",
        },
        timeout_s=180,
    )

    l2_list = tool_call(server, "bp-index-l2-list", {"scope_path": args.scope_path, "limit": args.limit}, timeout_s=120)
    chunk_ids = l2_list.get("chunk_ids") or []
    if not chunk_ids:
        raise RuntimeError("bp-index-l2-list returned no chunk_ids")

    out_path = Path(args.out)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    t0 = time.time()
    with out_path.open("w", encoding="utf-8") as f:
        for i, cid in enumerate(chunk_ids):
            cj = tool_call(
                server,
                "bp-index-chunk-get",
                {"chunk_id": str(cid), "node_offset": 0, "node_limit": args.node_limit},
                timeout_s=120,
            )
            f.write(json.dumps(cj, ensure_ascii=False) + "\n")
            if (i + 1) % 200 == 0:
                elapsed = max(0.001, time.time() - t0)
                rate = (i + 1) / elapsed
                print(f"progress: {i+1}/{len(chunk_ids)} chunks ({rate:.1f} chunk/s)")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())

