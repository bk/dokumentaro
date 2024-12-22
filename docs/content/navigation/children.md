---
title: Child Pages
parent: Navigation
nav_order: 4
tags:
  - navigation
---

# Child Pages

By default, all parent pages will automatically have links to child pages at the bottom, with a configurable title which by default is "More information".

To configure the heading for an individual page, set `subpages_toc_heading` to the desired value. To configure it for the entire site, override the template file `base/toc_heading_custom.mc`.

To disable this automatic list, set `disable_subpages_toc: true` in the parent page's front matter.

## Example: disabling subpage list
{: .text-delta }

```yaml
---
title: UI Components
nav_order: 3
disable_subpages_toc: true
---
```
