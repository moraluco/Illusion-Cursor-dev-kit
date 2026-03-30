# URigVMCommentNode

**Visibility:** public

## Inheritance

URigVMNode → URigVMCommentNode

## Description

Comment Nodes can be used to annotate a Graph by adding colored grouping as well as user provided text.  Comment Nodes are purely cosmetic and don't contribute to the runtime result of the Graph / Function.

## RIGVMCOMMENTNODE

CommentColorBubble

### CommentColorBubble

```
const bool CommentColorBubble
```

Returns the current user provided bubble color inheritance of this comment.

CommentFontSize

### CommentFontSize

```
const int CommentFontSize
```

Returns the current user provided font size of this comment.

CommentBubbleVisible

### CommentBubbleVisible

```
const bool CommentBubbleVisible
```

Returns the current user provided bubble visibility of this comment.

---

## VARIABLES

### CommentText

```
const FString CommentText RIGVMCOMMENTNODE GetCommentColorBubble bool GetCommentColorBubble()const
```

Returns the current user provided bubble color inheritance of this comment.

### GetCommentFontSize

```
int GetCommentFontSize()const
```

Returns the current user provided font size of this comment.

### GetCommentText

```
FString GetCommentText()const
```

Returns the current user provided text of this comment.

### GetCommentBubbleVisible

```
bool GetCommentBubbleVisible()const
```

Returns the current user provided bubble visibility of this comment.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URigVMCommentNode::StaticClass()
```
