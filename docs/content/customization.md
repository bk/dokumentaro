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

You can add custom schemes. This involves adding a set of CSS variables scoped to a `body` class with the same name as the new scheme. For reference, here is the SCSS code for the dark color scheme (from `_vars.scss`):

```
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

You may also wish to add settings for `.btn-primary` in the new color scheme code as well - see `_buttons.scss` for the corresponding setting for the dark theme.

The most natural way to define the theme is by overriding `assets/scss/d9o.scss` with content such as the following:

```scss
@use "vars";
@use "mixins";
// Custom variables go here

@use "all";

body.myschema {
  --base-button-color: #{vars.$grey-lt-100};
  // ... The other CSS variables go here ...
  .btn-primary {
    @include mixins.btn-color(vars.$white, $my-primary-color);
  }
}
```

For modularity, you can put your changes into separate files and `@use` them in your custom version of `d9o.scss`.

### Use a custom scheme

After having created a custom color scheme, you can use it by setting the `site.color_scheme` variable to your chosen name.

```yaml
site:
  color_scheme: foo
```

## Override SCSS

Dokumentaro's SCSS makes use of the Dart Sass [module system](https://sass-lang.com/blog/the-module-system-is-launched/).

As seen above, the easiest way to override or extend Dokumentaro's SCSS is to create a new file named `d9o.scss` in your project's `assets/scss/` directory. It should contain the line `@use "all";`, with your customizations either above or below (or both). If you intend to change variable settings, you should do that before the `@use "all";` line, while any new class definitions should be placed below. A simple example:


```scss
@use "vars" with (
  $header-height: 4rem,
  $content-width: 55rem,
  $nav-width: 18rem
);
@use "mixins";

@use "all";

.shout-louder {
  width: 90%;
  max-width: 30rem;
  padding: 1rem;
  background: var(--feedback-color);
  border: 2px solid var(--border-color);
  margin: 2rem auto;
  @include mixins.fs-5;
  @include mixins.mq(md) {
     @include mixins.fs-6;
  }
  .title {
     margin: 0 0 1em 0;
     @include mixins.fs-8;
     @include mixins.mq(md) {
       @include mixins.fs-10;
     }
  }
}
```

### Custom TOC Heading

The file `templates/base/toc_heading_custom.mc` can be overridden to change the heading for the links to child pages shown below the main body of the page. By default, this text is *More information*.

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

