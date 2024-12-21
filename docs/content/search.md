---
title: Search
nav_order: 7
tags:
  - configuration
  - search
---

# Search

[TOC]

---

Dokumentaro uses [Pagefind](https://pagefind.app/) for search.

Settings related to search fall into three categories: (1) enabling/disabling; (2) other configuration settings affecting search; (3) PagefindUI settings; (4) styling.

## Enabling and disabling search

Search is enabled by default. The settings in `wmk_config.yaml` that must be present for this to be the case are the following:

```yaml
site:
  search_enabled: true
cleanup_commands:
  - "npx -y pagefind --site htdocs"
```

These settings are default as they are provided by the theme.

/// warning
For the Pagefind indexing command to work, obviously you must have [npm](https://www.npmjs.com/) and [npx](https://docs.npmjs.com/cli/v10/commands/npx) installed on the machine where the website is built.
///

If you need to customize the [command line for Pagefind](https://pagefind.app/docs/config-options/), you should change the provided `cleanup_commands` entry. Similarly, if you add an unrelated `cleanup_commands` entry, you must make sure to include the Pagefind indexing command as well.

If you decide to turn off the search functionality, you should of course remove the Pagefind indexing command as well, e.g. as follows:

```yaml
site:
  search_enabled: false
cleanup_commands:
  - "echo 'NOTE: Pagefind indexing is currently disabled'"
```

## Other configuration settings

Pagefind by default creates separate indexes for each content language. There are also different stemming rules for different languages. Therefore, the `site.lang` setting affects the search functionality. If all your pages are in one language, you should set `site.lang` accordingly. The default value is `en` (i.e. English).

/// note
If you have a multilingual site, each page should have a `lang` variable to indicate its primary language. Note that in this case, the site search only looks in the subset of pages that belong to the language of the page you're searching from. However, Dokumentaro is not especially suited to multilingual sites, so this kind of setup is not really recommended.
///

The placeholder text shown in the search box is configurable with the setting `site.search_placeholder`. By default its value is "Search this website". If your main language is not English, you might want to change this. For example (for French):

```yaml
site:
  search_placeholder: Rechercher sur le site
```

## PagefindUI settings

You can change the settings for the [PagefindUI](https://pagefind.app/docs/ui/) by overriding `templates/base/_pagefind_ui_settings.mc`, which should contain a single Javascript object. The default content is the following:

```js
{
  element: "#search",
  showSubResults: true,
  showImages: false
}\
```

## Styling

Pagefind provides its own stylesheet which is independent of the main stylesheet for Dokumentaro.

The integration that is present is found in the theme's `assets/scss/_search.scss`. However, the most natural way to add CSS that relates to search is simply to place relevant rules and settings in your site's `assets/scss/_custom.scss`.

Pagefind provides a number of [CSS variables](https://pagefind.app/docs/ui-usage/#customising-the-styles) that can be used to tweak the appearance of search results.
