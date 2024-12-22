---
title: Ordering Pages
parent: Main Navigation
nav_order: 1
tag:
  - navigation
---

# Ordering Pages

To specify a page order, you can use the `nav_order` parameter in the front
matter of the pages.  You can also use `weight` instead if you prefer. The
value should be numeric (i.e. an integer or a decimal number).[^1]

## Example: using `nav_order` {: .text-delta }

```yaml
---
title: Customization
nav_order: 6
---
```

The parameter values determine the order of the top-level pages, and of child pages with the same parent. You can reuse the same parameter values (e.g., integers starting from 1) for the child pages of different parents.

/// .warning
The order of pages with equal `nav_order` parameters is unstable: it may change with each build.
///

----

[^1]: Technically, strings can also be used. However, numeric and alphabetic values cannot be mixed in the same set of content files (since Python doesn't know how to compare them), so it is safest and most natural always to use numeric `nav_order` values.
