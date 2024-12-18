---
title: Customization
nav_order: 6
tags:
  - appearance
  - configuration
---

# Customization

[TOC]

---

## Color schemes

Dokumentaro includes two color schemes: light (default), and dark.

To enable a color scheme, set the `site.color_scheme` variable in `wmk_config.yaml`.


<button class="btn js-toggle-dark-mode">Preview dark color scheme</button>

<script>
const toggleDarkMode = document.querySelector('.js-toggle-dark-mode');

d9o.addEvent(toggleDarkMode, 'click', function(){
  if (d9o.getTheme() === 'dark') {
    d9o.setTheme('default');
    toggleDarkMode.textContent = 'Preview dark color scheme';
  } else {
    d9o.setTheme('dark');
    toggleDarkMode.textContent = 'Return to the light side';
  }
});
</script>

## Custom schemes

### Define a custom scheme

You can add custom schemes. This involves

1. Creating a new file containing color-related SCSS variables in the directory `assets/scss/color_schemes`. The filename should start with an underscore. Let's call it `_mycolors.scss`.
2. Creating a new appropriately named filei in `assets/scss`, e.g. `d9o-mycolors.scss`. The contents should be similar to that of `d9o-light.scss` and `d9o-dark.scss`, except that you `@import "color_schemes/mycolors"` instead of `color_schemes/light` or `color_schems/dark`.

Aside from the variables referenced in the two built-in color schemes you might also want to override some of the variables in `assets/scss/support/_variables.scss`.

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

Content added to `templates/base/header_custom.mc` appears at the top of every page's main content between the site search and auxiliary links (if they are enabled). If `site.search_enabled` were set to false and `site.aux_links` were removed, the content of `header_custom.html` would occupy the space at the top of every page.

### Custom Nav Footer

Any content added to the file `templates/base/nav_footer_custom.mc` will appear at the bottom left of the page below the site's navigation. By default an attribution to Dokumentaro is displayed here.

### Custom Search Placeholder

The search placeholder can be set via the `site.search_placeholder` configuration variable. By default it is `Search this website`.

## Custom layouts {: .d-inline-block }

Advanced
{: .label .label-yellow }

Creating custom layouts allows you to change most aspects of Dokumentaro's functionality. This requires some Python and/or Mako knowledge.

Having created a new layout, you would select it in the frontmatter of the relevant pages, or perhaps in `content/index.yaml`, in order to make it the default layout for all pages.

