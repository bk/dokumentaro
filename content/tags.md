---
title: Tags
layout: taxonomy
nav_order: 20
TAXONOMY:
  taxon: ['tags', 'tag']
  order: name
  name: tags
  name_singular: tag
  name_plural: tags
  detail_settings:
    relationship_description: are tagged with the tag
---

# Tags


[TOC]

---

## About the tag page

This is the overview page for tags, which establishes the base URL for
the pages for each individual tag. It uses [the taxonomy
layout](../layout/layout/#the-taxonomy-layout) and has a `TAXONOMY` variable
which controls the functionality.  See [the wmk
documentation](https://wmk.baldr.net/pagevars/#taxonomy-handling) for details.

/// note
If you have used tags in your front matter but have turned `site.tags_enabled` off, this page will still show a list of tags and each tag will have its own page listing the pages belonging to it. However, a list of the tags  each page is tagged with will not appear below its main content.

Conversely, if you have `site.tags_enabled` set to true but this page (or an equivalent one) does not exist, then tags will not appear anywhere on the site, despite their presence in the front matter of some content files.
///

Here is the YAML front matter of this page (slightly abbreviated):

```yaml
title: Tags
layout: taxonomy
TAXONOMY:
  taxon: ['tags', 'tag']
  order: name
  name: tags
  name_singular: tag
  name_plural: tags
  detail_settings:
    relationship_description: are tagged with the tag
```

---

## List of tags

All active tags on this site are listed below in alphabetical order.
Click on a tag to show a list of the pages tagged with it.
