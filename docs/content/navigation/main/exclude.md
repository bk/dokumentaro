---
title: Excluding Pages
parent: Main Navigation
nav_order: 2
tag:
  - navigation
---

# Excluding Pages

For specific pages that you do not wish to include in the main navigation (e.g., a 404 page or a landing page) set `nav_exclude: true` in their front matter.

## Example: using `nav_exclude` {: .text-delta }

```yaml
---
layout: default
title: 404 Not Found
nav_exclude: true
---
```

The `nav_exclude` parameter does not affect the [breadcrumbs](../parents/), nor the [lists of child pages](../children/), which you can use to access pages excluded from the main navigation.

Child pages are **NOT** automatically excluded from the main navigation when their parent page is excluded. Such a situation may lead to unexpected results; it is best to avoid it. If you want to exclude a group of pages from navigation without having to configure each individually, place them in a subdirectory inside `content/` and add `nav_exclude: true` to that directory's `index.yaml` file.
