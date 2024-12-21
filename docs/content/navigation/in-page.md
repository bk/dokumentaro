---
title: In-Page Navigation
parent: Navigation
nav_order: 5
---

# In-Page Navigation

[TOC]

To support in-page navigation, you can generate a *Table of Contents* (TOC) with links to headings, like the one shown above, as well as a link to the top of the page.

## Generating Table of Contents

To generate a *Table of Contents* in a page, you add a paragraph containing only `[TOC]` where you want the TOC to appear. 

/// note
`[TOC]` can be used only once on each page.
///

## Omitting Heading from Table of Contents

There is no way of excluding a specific heading from the TOC. However, by default it is configured to only include headings of levels 2 and 3. Headings of higher and lower levels will therefore not be included (unless you change the `toc_depth` setting).


## Back to Top {#back-to-top-doc}

/// warning
The default id for a section with heading "Back to Top" is `"back-to-top"`.
To avoid invalid HTML, sites that set the `back_to_top` configuration variable
should override the default id for such sections. The Markdown source file for
the current page uses `## Back to Top {#back-to-top-doc}`.
///

You can add a link from the bottom of each page to its top. You do this by including the `site.back_to_top` configuration option in your site's `wmk_config.yaml` file, together with `site.back_to_top_text` for the anchor link.


/// warning
Back-to-top links currently appear only when *other* configuration options require footer generation!
///
