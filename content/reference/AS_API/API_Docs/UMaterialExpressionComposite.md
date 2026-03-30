# UMaterialExpressionComposite

**Visibility:** public

## Inheritance

UMaterialExpression → UMaterialExpressionComposite

## Description

Composite (subgraph) expression. Exists purely for organzational purposes.  Under the hood uses reroute expressions for graph compilation. See below to understand how a particular reroute's input / output correlates to the inputs / outputs of composites and their pin bases.

### _________________  _________________

```
_________________  _________________
```

INPUT BASE    |        |   OUTPUT BASE   |

### +--------+--------+  +--------+--------+

```
+--------+--------+  +--------+--------+
```

|   (>)  |   ->   |  (>)   |        |

### |

```
|(>)| |(>)| | |(>)| |(>)| |
```

|   (>)  |        |  (>)   |        |

## Members

|        |        |        |        |

+--------+--------+  +--------+--------+

NODE IN:  NONE  |        | NODE IN:  PINS  |

NODE OUT: PINS  |        | NODE OUT: NONE  |

### |_________________|  |_________________|

```
|_________________|  |_________________|
```

^  |

### v

```
COMPOSITE          |
```

+---------+--------+---------+ ->  |  (>)  |  |  (>)  |  ->

### 

```
(>)| |(>)|(>)| |(>)|
```

(>)  |        |  (>)    |

     |        |         |

+---------+--------+---------+

### NODE IN:  TO INPUT BASE    |

```
NODE IN: TO INPUT BASE | NODE OUT: FROM OUTPUT BASE | MATERIALEXPRESSIONCOMPOSITE SubgraphName FString SubgraphName STATIC FUNCTIONS StaticClass static UClass UMaterialExpressionComposite::StaticClass()
```
