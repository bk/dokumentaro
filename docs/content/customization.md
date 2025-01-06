---
title: Customization
nav_order: 6
tags:
  - configuration
  - css
  - layout
---

# Customization

[TOC]

---

## Color schemes

Dokumentaro includes two color schemes: light (default), and dark.

To enable a color scheme, set the `site.color_scheme` variable in `wmk_config.yaml`.

Use the color switcher at the top right to switch between them and set your preference.
It can be disabled by setting `site.color_scheme_switcher` to false.

## Custom schemes

### Define a custom scheme

You can add custom schemes. This involves adding a set of CSS variables scoped to a `body` class with the same name as the new scheme. For reference, here is the SCSS code for the dark color scheme (in `_vars.scss`):

```scss
body.dark {
  --base-button-color: #{$grey-dk-250};
  --body-background-color: #{$blackish};
  --body-heading-color: #{$grey-lt-000};
  --body-text-color: #{$grey-lt-300};
  --border-color: #{$grey-dk-200};
  --btn-hover-color: #{color.adjust($blue-000, $lightness: -2%, $space: hsl)};
  --btn-outline-hover-color: #{color.adjust($blue-000, $lightness: -4%, $space: hsl)};
  --btn-primary-color: #{$blue-200};
  --feedback-color: #{color.adjust($grey-dk-300, $lightness: -3%, $space: hsl)};
  --feedback-color-lighter: #{rgba(color.adjust($grey-dk-300, $lightness: -3%, $space: hsl), 0.8)};
  --link-color: #{$blue-000};
  --nav-child-link-color: #{$grey-dk-000};
  --sidebar-color: #{$grey-dk-300};
  --table-background-color: #{$grey-dk-250};
  --table-td-border-bottom-color: rgba($grey-dk-200, 0.5);
}
```

The most natural place for the code for a custom color scheme is probably in the SCSS file `custom/_setup.scss`.

You may also wish to add settings for `.btn-primary` in the new color scheme to this file as well - see `_buttons.scss` for the corresponding setting for the dark theme.

### Use a custom scheme

After having created a custom color scheme, you can use it by setting the `site.color_scheme` variable to your chosen name.

```yaml
site:
  color_scheme: foo
```

## Override SCSS

You can override or extend Dokumentaro's SCSS rules at three different stages by creating files in `assets/scss/custom/`:

- `_site_vars.scss`: This file is imported at the very start.
- `_setup.scss`: This file is imported after variables and mixins have been loaded, but before the color scheme settings, and thus before any CSS classes have been defined.
- `_custom`: This file is imported at the end. New CSS classes should be placed here.


### Custom TOC Heading

The file `templates/base/toc_heading_custom.mc` can be overridden to change the heading for the links to child pages shown below the main body of the page. By default, this is *More information*.

### Custom Footer

The file `templates/base/footer_custom.mc` can be overridden to change the content appearing at the bottom of every page's main content. See also [Configuration - Footer content](../configuration/#footer-content).

### Custom Head

Any HTML added to the file `templates/base/head_custom.mc` will be inserted before the closing `<head>` tag.

### Custom Header

Content added to `templates/base/header_custom.mc` appears at the top of every page's main content between the site search and auxiliary links (if they are enabled) or theme switcher (if they are not). If `site.search_enabled` and `site.color_scheme_switcher` were set to false and `site.aux_links` not set, the content of `header_custom.mc` would expand to occupy the entire space to the right of the site name/logo.

### Custom Nav Footer

Any content added to the file `templates/base/nav_footer_custom.mc` will appear at the bottom left of the page below the site's navigation. By default an attribution to Dokumentaro is displayed here.

### Custom Search Placeholder

The search placeholder can be set via the `site.search_placeholder` configuration variable. By default it is `Search this website`.

## Custom layouts {: .d-inline-block }

Advanced
{: .label .label-yellow }

Creating custom layouts allows you to change most aspects of Dokumentaro's functionality. This requires some Python and/or Mako knowledge.

Having created a new layout, you would select it in the frontmatter of the relevant pages, or perhaps in `content/index.yaml`, in order to make it the default layout for all pages.

