---
title: Home
layout: home
nav_order: 1
description: "Dokumentaro is a responsive wmk theme intended for documentation sites. It is highly customizable and has built-in search based on Pagefind."
permalink: /
---

# Focus on writing good documentation {: .fs-9 }

Dokumentaro gives your documentation a jumpstart with a responsive wmk theme that is highly customizable.
{: .fs-6 .fw-300 }

[Getting started](#getting-started){: .btn .btn-primary .fs-5 .mb-4 .mb-md-0 .mr-2 }
[View it on GitHub][Dokumentaro repo]{: .btn .fs-5 .mb-4 .mb-md-0 }


---

/// note
This website documents and illustrates most of the features of the current `main` branch of the Dokumentaro theme.
///

Dokumentaro is a theme for generating static websites with [wmk]. You can write source files for your web pages using Markdown and HTML.[^1] Wmk builds your site by converting all content files to HTML that will be wrapped in layout templates. There are many [settings][wmk configuration] that affect the operation of the theme. They are  set in the `wmk_config.yaml` file or added in the form of custom templates.

This documentation for the Dokumentaro theme is an example of how it can be used. It shows its default appearance. However, you can easily [customize] the appearance as well as the functionality.

## Getting started

See the [general instructions][theme-instructions] on how to use a theme in wmk.

## About the project

Dokumentaro is a port of the popular [Jekyll][jekyll] documentation theme [Just the Docs][just-the-docs] to wmk.

### License

Dokumentaro has an [MIT license](https://github.com/bk/dokumentaro/tree/main/LICENSE.txt).

----

[^1]: wmk also supports other markup types via Pandoc. Using Pandoc may require slight tweaking to the theme SCSS code to get desired results.


[Dokumentaro repo]: https://github.com/bk/dokumentaro
[wmk]: https://wmk.baldr.net/
[wmk configuration]: https://wmk.baldr.net/config/
[theme-instructions]: https://wmk.baldr.net/themes/
[jekyll]: https://jekyllrb.com
[just-the-docs]: https://just-the-docs.com
[customize]: ./customization/
