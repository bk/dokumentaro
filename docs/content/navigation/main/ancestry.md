---
title: Ancestry
parent: Main Navigation
nav_order: 4
---

# Ancestry

If no two pages on your website have the same `title`, you only need to set the `parent` titles to fix the hierarchy. You can also have the same `title` on pages that have no children, provided that they have different parent pages.

However, if two parents have the same `title`/`page_title`, you must distinguish between them by specifying them as `parent` using their `slug` or `id` instead of the title.

## Example: two parents with identical titles {: .text-delta }

```yaml
---
title: T
# Here `parent: S` would not work, use slug instead
parent: xs
---
```

```yaml
---
title: T
# Here `parent: S` would not work, use slug instead
parent: ys
---
```

Normally, the slug is sufficient to disambiguate. When it isn't, the `id` must be used instead. In this case, the two `id`s are `navigation-main-xs` and `navigation-main-ys`.
