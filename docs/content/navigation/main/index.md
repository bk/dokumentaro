---
title: Main Navigation
parent: Navigation
nav_order: 1
tags:
  - navigation
  - configuration
---

# Main Navigation

The main navigation for your Dokumentaro site is at the left side of the page on large screens, and at the top (behind a tap) on small screens (assuming that you are using the default layout and have not disabled the nav).

You need to specify the `title` of each page in its front matter. Page titles are independent of file names and directory structure. The navigation uses the title of the page as an anchor for links to the page. (If the title is uncomfortably long or is identical to another title, you can add a special `nav_title` which is then used instead in the navigation menu.)

By default, links to all pages appear in the main navigation at the top level, ordered alphabetically by their titles. By adding further fields to the front matter of individual pages, you can [change their order](./order/), [exclude pages](./exclude/), and change their [parent pages](./levels/). There is no intrinsic limit to the number of levels in the navigation.

For the construction of the navigation display to work (and to avoid potential confusion when browsing) ***the page titles on your site need to satisfy the following requirements:***

* Top-level pages must have different titles.
* Pages with the same parent must have different titles.
* The title of each page must be different from the titles of all its child pages, and from the titles of their child pages, etc.

If *all* the pages of your site have different titles, you need only to specify the `title` of each page, and the `parent` title of each lower-level page.

If your site has pages with the same title, you need to avoid confusion when you reference that title as `parent` on other pages. In such cases, you must use the `slug` or `id` value of the intended parent page instead of its title.


----
