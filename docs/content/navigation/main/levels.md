---
title: Page Levels
parent: Main Navigation
nav_order: 3
tags:
  - navigation
---

# Page Levels

Sometimes you will want to create a page with many children. It is recommended that you store related pages together in a subdirectory.

## Example: page with no parents {: .text-delta }

```yaml
---
title: UI Components
nav_order: 3
---
```

Here we're setting up the UI Components landing page that is available at URL `/ui-components/`, which is ordered third in the main navigation.

The navigation links for all pages with children come with an expander. When you click the expander, the display of the children is toggled, so you can expand or collapse all the children displays, regardless of which page is currently active.

## Child Pages

On child pages, simply set the `parent` front matter to the parent page's `title` (or `nav_title`, or `slug`/`id` in cases of name conflicts), and set a navigation order (relative to pages having the same parent).

### Example: creating a child page {: .text-delta }

```yaml
---
title: Buttons
parent: UI Components
nav_order: 2
---
```

The Buttons page appears as a child of UI Components and appears second in the UI Components pages.

## Multi-level Child Pages

Child pages can themselves have children, to any number of levels.

### Example: pages with (recursive) children {: .text-delta }

```yaml
---
title: Main Navigation
parent: Navigation
nav_order: 1
---
```

```yaml
---
title: Ancestry
parent: Main Navigation
nav_order: 4
---
```

```yaml
---
title: X
parent: Ancestry
---
```

```yaml
---
title: Y
parent: Ancestry
---
```

This creates the following navigation structure:

<div class="lh-0" markdown="1">
```
┌─ ...
├─ ...
├─ Navigation
    ├─ ...
    ├─ Main Navigation
        ├─ ...
        ├─ Ancestry
            ├─ X
            └─ Y
        ├─ ...
        └─ ...
    ├─ ...
    └─ ...
├─ ...
└─ ...
```
</div>
