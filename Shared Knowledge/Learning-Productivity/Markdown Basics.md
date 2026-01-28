---
title: Markdown Basics
type: knowledge
status: active
tags:
  - "#type/one-sheet"
created: 2026-01-28T09:00:00-06:00
modified: 2026-01-28T09:00:00-06:00
---

# Markdown Basics

Markdown (`.md`) files are plain text documents that use simple syntax to format text. They are widely used for documentation, notes, and web content because they are readable as plain text while also rendering nicely when processed.

## Headings

Use `#` symbols to create headings. More `#` symbols indicate smaller headings.

```
# Heading 1
## Heading 2
### Heading 3
#### Heading 4
```

## Text Formatting

| Style | Syntax | Result |
|-------|--------|--------|
| Bold | `**text**` or `__text__` | **text** |
| Italic | `*text*` or `_text_` | *text* |
| Bold & Italic | `***text***` | ***text*** |
| Strikethrough | `~~text~~` | ~~text~~ |
| Inline Code | `` `code` `` | `code` |

## Lists

### Unordered Lists

```
- Item one
- Item two
  - Nested item
  - Another nested item
- Item three
```

### Ordered Lists

```
1. First item
2. Second item
3. Third item
```

## Links and Images

### Links

```
[Link Text](https://example.com)
```

### Images

```
![Alt Text](path/to/image.png)
```

## Blockquotes

Use `>` to create blockquotes:

```
> This is a blockquote.
> It can span multiple lines.
```

## Code Blocks

For multi-line code, use triple backticks with an optional language identifier:

````
```python
def hello():
    print("Hello, World!")
```
````

## Horizontal Rules

Create a horizontal line with three or more dashes, asterisks, or underscores:

```
---
```

## Tables

```
| Column 1 | Column 2 | Column 3 |
|----------|----------|----------|
| Row 1    | Data     | Data     |
| Row 2    | Data     | Data     |
```

## Task Lists

```
- [ ] Uncompleted task
- [x] Completed task
```

## Escaping Characters

Use a backslash `\` to display literal characters that would otherwise be interpreted as formatting:

```
\*This text is not italic\*
```

## Obsidian-Specific Syntax

Within Obsidian, additional syntax is available:

| Feature | Syntax |
|---------|--------|
| Internal Links | `[[Note Name]]` |
| Embedded Notes | `![[Note Name]]` |
| Embedded Images | `![[image.png]]` |
| Block References | `[[Note Name#^block-id]]` |
| Tags | `#tag-name` |
| Highlights | `==highlighted text==` |
| Comments | `%%hidden comment%%` |
| Callouts | `> [!note]` or `> [!warning]` etc. |
