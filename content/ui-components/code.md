---
title: Code
parent: UI Components
nav_order: 6
---

# Code

[TOC]

---

## Inline code

Code can be rendered inline by wrapping it in single back ticks.

<div class="code-example" markdown="1">
Lorem ipsum dolor sit amet, `<inline code snippet>` adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

## Heading with `<inline code snippet>` in it.

</div>
```markdown
Lorem ipsum dolor sit amet, `<inline code snippet>` adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

## Heading with `<inline code snippet>` in it.
```

---

## Syntax highlighted code blocks

Code blocks are syntax-highlighted according to the language specified immediately after the backticks. For instance:

```js
// Javascript code with syntax highlighting.
var fun = function lang(l) {
  dateformat.i18n = require('./lang/' + l)
  return true;
}
```

## Line numbers

In order to show the code block with line numbers, simply add `{linenums="1"}` after the language code. It is also possible to specify a different starting number than 1; in this example we use 8 to show the transition from one to two digits:

```js {linenums="8"}
// Javascript code with automatic line numbering
var fun = function lang(l) {
  dateformat.i18n = require('./lang/' + l)
  return true;
}
```

---

## Code blocks with rendered examples

To demonstrate front end code, sometimes it's useful to show a rendered example of that code. After including the styles from your project that you'll need to show the rendering, you can use a `<div>` with the `code-example` class, followed by the code block syntax. If you want to render your output with Markdown instead of HTML, use the `markdown="1"` attribute.


---

## Mermaid diagram code blocks

[Mermaid](https://mermaid-js.github.io/mermaid/) allows you to add diagrams and visualizations using Markdown code blocks. **It is disabled by default**.

The minimum configuration requires a `version` key (matching a version in [jsDelivr](https://cdn.jsdelivr.net/npm/mermaid/)):

```yaml
mermaid:
  # Version of mermaid library
  # Pick an available version from https://cdn.jsdelivr.net/npm/mermaid/
  version: "11.1.1"
```

Additional configuration options are loaded through `base/mermaid_config.js` in `templates/`. By default, the contents of the file are an empty object, meaning that defaults settings are used.

The contents of this object should follow [mermaid's configuration API](https://mermaid.js.org/config/configuration.html).

```
graph TD;
    accTitle: the diamond pattern
    accDescr: a graph with four nodes: A points to B and C, while B and C both point to D
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```

which with the addition of `mermaid` renders:

```mermaid
graph TD;
    accTitle: the diamond pattern
    accDescr: a graph with four nodes: A points to B and C, while B and C both point to D
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```


### Using a local mermaid library

To load a local version of mermaid, also use the `path` key to specify the location of the library; e.g.

```yaml
mermaid:
  version: "11.1.1"
  # for (v10+)
  path: "/js/mermaid.esm.min.mjs"
```

The mermaid library should be of at least version 10 so that it can be loaded directly as an ESM module.

## Copy button

The copy button for code blocks can be enabled or disabled via the `site.enable_copy_code_button` configuration option. By default, the value of this key is `false`; users need to opt-in.

Note that this feature requires JavaScript; if JavaScript is disabled in the browser, this feature will not work. In addition, this feature uses `navigator.clipboard`, which is only available in [secure contexts](https://developer.mozilla.org/en-US/docs/Web/Security/Secure_Contexts) (such as over HTTPS). If the site is viewed in an insecure context, the copy button will not work.
