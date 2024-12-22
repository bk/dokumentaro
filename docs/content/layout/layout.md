---
title: Layout
layout: default
nav_order: 4.5
tags:
  - layout
---

# Layout

You specify the layout for a page in its YAML front matter using the `layout` or `template` key. The `default` layout for Dokumentaro has a sidebar and is used for almost all pages in the theme docs. The other main layout is `minimal`. It has no sidebar.
{: .fs-6 .fw-300 }

## The `default` layout

The default layout will be used unless you explicitly set something else.

The default layout is responsive: on medium and larger width displays, it displays a sidebar, including a navigation panel; on smaller width displays, the sidebar is automatically hidden under a button.

All pages except top-level pages automatically have a list of  so-called *breadcrumbs*: links to their parent pages and any higher-level ancestors. They show the breadcrumbs above the main content of the page.

Each page that has child pages generally has a list of links to those pages (you can suppress it by `has_toc: false` in the front matter). It shows the list as a *More information* section below the main content. (The title "More information" can be configured using the `site.subpages_toc_heading` setting, or per-page using the `subpages_toc_heading` frontmatter variable.)

## The `minimal` layout

A child and grandchild page of this page use the minimal layout. This differs from the default layout by omitting the sidebar---and thereby also the navigation panel. To navigate between pages with the minimal layout, you can use the breadcrumbs and the tables of contents.

## Selectively hiding or showing the sidebar

Another way to disable the sidebar is to set the `nav_enabled` frontmatter variable to false.
You can set this as the default for the website by setting the `site.nav_enabled` configuration option to false.

## The `taxonomy` layout

If you [enable tag support](../../configuration/#tags), then your tags page must use the `taxonomy` layout. It can also be used for other taxonomies you may wish to add to your site, e.g. categories, topics, sections or authors.

The `taxonomy` layout inherits from the default layout and only overrides the main body of the page and the page title. Other features are unchanged.

## Other layouts

The layouts `about`, `home`, `page` and `post` exist as well but by default they are identical with `default`. They have been created for compatibility with content files written for other themes and to serve as targets for customization.
