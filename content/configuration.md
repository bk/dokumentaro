---
title: Configuration
nav_order: 2
tags:
  - appearance
  - configuration
---

# Configuration

Dokumentaro supports several configuration parameters that can be defined in your site's `wmk_config.yaml` file. The default values for these settings are set by the theme.
{: .fs-6 .fw-300 }

[TOC]

---

## Site logo

Set a url to a logo that will be displayed instead of the title.

```yaml
site:
  logo: "/images/dokumentaro.png"
```

## Site favicon

Set a url to a favicon that will be displayed by the browser.

```yaml
site:
  favicon_ico: "/images/favicon.ico"
```

The default location for a favicon is the site root. Hence, you can leave this configuration variable unset if you place your `favicon.ico` file there.

## Search

Dokumentaro uses [Pagefind] for site search. It is enabled by default:

```yaml
site:
  search_enabled: true
  search_placeholder: Search Dokumentaro
```

[Pagefind]: https://pagefind.app/

/// warning
For site indexing by Pagefind to work, you must have [npx](https://docs.npmjs.com/cli/v8/commands/npx) installed on the computer where you build the site.
///


## Mermaid Diagrams


The minimum configuration requires the key for `version` ([from jsDelivr](https://cdn.jsdelivr.net/npm/mermaid/)):

```yaml
site:
  mermaid:
    # Version of mermaid library
    version: "11.4.1"
```

Provide a `path` instead of a `version` key to load the mermaid library from a local file.


## Aux links

```yaml
site:
  # Aux links for the upper right navigation
  aux_links:
    - title: wmk on GitHub
      url: https://github.com/bk/wmk
  # Makes Aux links open in a new tab. Default is false
  aux_links_new_tab: false
```

## Navigation sidebar

Enable or disable the side/mobile menu globally using this option.
The nav menu can also be selectively enabled or disabled using page variables or the minimal layout.

```yaml
site:
  nav_enabled: true
```

## Heading anchor links

Heading anchor links appear on hover over heading (h1-h6) tags in page content,
allowing users to deep link to a particular heading on a page.

```yaml
site:
  heading_anchors: true
```

## External navigation links

External links can be added to the navigation through the `nav_external_links` option.
See [Navigation Structure](../navigation/main/external/) for more details.

## Footer content

The footer content is configured by addinng a file named
`base/footer_custom.mc` to the `templates/` directory. However, you can also affect it by specifying a few configuration settings:

### Last edited

```yaml
site:
  last_edit_timestamp: true
  last_edit_time_format: "%Y-%m-%d %H:%M"
```

The effect of these settings is to display a last edited time below the main body of the page.

### Edit on GitHub

```yaml
site:
  gh_edit_link: 'https://github.com/bk/dokumentaro/edit/master/content'
  gh_edit_link_text: Edit this file on Github
```

The effect of these settings is to display a link below the main body that allows editing the source of the page. Despite the name, the link does not necessarily have to be on GitHub. It might e.g. point to GitLab or a private Gitea installation instead. Both options must be set in order for a link to be displayed.

### Tags

In order to use tags in your documentation pages, two things must first be present:

In the first place, `site.tags_enabled` must be true (which it is by default):

```yaml
site:
  tags_enabled: true
```

Secondly, you need a page defining the place where the list of tags will appear in the page hierarchy. For instance, here is a sample `content/tags.md` page:

```markdown
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

All active tags on this site are listed below in alphabetical order.
Click on a tag to show a list of the pages tagged with it.
```

Without the tag page, Dokumentaro will not be able to link to the subpage for each tag, so the list of tags will not appear in the footer. The tag page must use the `taxonomy` layout (i.e. `templates/base/taxonomoy.mhtml`).

Currently, tags are [not supported](https://github.com/just-the-docs/just-the-docs/issues/255) by Just the Docs because the design of Jekyll makes this difficult for documentation sites. The tags support by Dokumentaro is thus an extra feature relative to Just the Docs.

## Color scheme

The color scheme setting supports "light" (or "default") and "dark". User-defined colorschemes are possible by adding SCSS files in `assets/scss`.

```yaml
site:
  color_scheme: dark
```

<button class="btn js-toggle-dark-mode">Preview dark color scheme</button>

<script>
const toggleDarkMode = document.querySelector('.js-toggle-dark-mode');

d9o.addEvent(toggleDarkMode, 'click', function(){
  if (d9o.getTheme() === 'dark') {
    d9o.setTheme('light');
    toggleDarkMode.textContent = 'Preview dark color scheme';
  } else {
    d9o.setTheme('dark');
    toggleDarkMode.textContent = 'Return to the light side';
  }
});
</script>

## Callouts

Just the Docs has the concept of Callouts which are alerts or admonition blocks. 
You had to define the types you wanted in the configuration file for the site and specify the color and default title for each.

Dokumentaro, however, instead uses the [adminition blocks](https://facelessuser.github.io/pymdown-extensions/extensions/blocks/plugins/admonition/) markdown extension for python-markdown. The types of admonitions are defined in `wmk_config.yaml` in the following manner:

```
markdown_extensions_configs:
  pymdownx.blocks.admonition:
    types:
      # Defaults: note, attention, caution, danger, error, tip, hint, warning.
      # Adding abstract, bug, example, failure, important, info, new,
      # question, quote, success.
      - note
      - attention
      - caution
      - danger
      - error
      - tip
      - hint
      - warning
      - abstract
      - bug
      - example
      - failure
      - important
      - name: info
        title: "Information"
      - new
      - question
      - quote
      - success
```

The appearance for each of these types is defined in `assets/scss/_admonitions.scss`. The colors for each type can, however, be changed by setting CSS variables (`--adminition-bg`, `--admonition-title`) without having to override that file.

```
/// example
Here is an example of an admonition.
///
```

/// example
Here is an example of an admonition.
///


## Google Analytics

```yaml
site:
  # Google Analytics Tracking (optional)
  ga_tracking: G-1AB234CDE5
  ga_tracking_anonymize_ip: true
```

It is possible to specify more than one tracking ID as a commma-separated string (without spaces). This may facilitate transition bwtween different versions of Google Analytics or migration to a different site.

```yaml
ga_tracking: "UA-1234567-89,G-1AB234CDE5"
```
