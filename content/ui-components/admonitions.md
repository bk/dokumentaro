---
title: Admonitions
parent: UI Components
nav_order: 7
tags:
  - components
---

# Admonitions

The markdown format as such has no built-in support for admonitions (also called alerts or callouts). However, there are several extensions that add such support. Dokumentaro uses the variant defined by the [PyMDown Admonition Blocks Extension](https://facelessuser.github.io/pymdown-extensions/extensions/blocks/plugins/admonition/) for Python-Markdown. It is characterized by an opening line consisting of at least three slashes, a class indicator and an optional custom title, and a closing line of the same number of slashes, with the body of the admonition in between.

As described on the [Configuration](../../configuration/) page, the available types of admonitions can be configured in `wmk_config.yaml`. The default types provided by the theme are the following:

- note, info, abstract (blue)
- question, hint, example (purple)
- caution, warning, attention, important (yellow)
- danger, error, bug, failure (red)
- new, success, tip (green)
- quote, admonition (grey)

## Examples

<div class="code-example" markdown="1">

/// important
This is a short admonition of the **important** type. Its color is yellow and it has no custom title. By default, the class name appears as the title instead.
///

</div>
```markdown
/// important
This is a short admonition of the **important** type. Its color is yellow and it has no custom title. By default, the class name appears as the title instead.
///
```

<div class="code-example" markdown="1">

/// info
This is a short admonition of the **info** type. Its color is blue and it has no custom title. Its default title has been configured to be "Information" rather than "Info".
///

</div>
```markdown
/// info
This is a short admonition of the **info** type. Its color is blue and it has no custom title. Its default title has been configured to be "Information" rather than "Info".
///
```


<div class="code-example" markdown="1">

/// tip | Be cool with this one trick
This is a short admonition of the **tip** type. Its color is green and it has a custom title.
///

</div>
```markdown
/// tip | Be cool with this one trick
This is a short admonition of the **tip** type. Its color is green and it has a custom title.
///
```

<div class="code-example" markdown="1">

/// quote |
This is a short admonition of the **quote** type. Its color is grey and it has no title, because it has a pipe character with nothing following it on the first line.
///

</div>
```markdown
/// quote |
This is a short admonition of the **quote** type. Its color is grey and it has no title, because it has a pipe character with nothing following it on the first line.
```

<div class="code-example" markdown="1">

/// bug
This is a short admonition of the **bug** type. Its color is red.
///

</div>
```markdown
/// bug
This is a short admonition of the **bug** type. Its color is red.
///
```

<div class="code-example" markdown="1">

/// example
This is a short admonition of the **example** type. Its color is purple.

Note that one can have more than one paragraph inside an admonition.
Indeed, many other kinds of content can be added, e.g.:

- lists
- blockquotes
- code blocks
- nested admonitions
///

</div>
```markdown
/// example
This is a short admonition of the **example** type. Its color is purple.

Note that one can have more than one paragraph inside an admonition.
Indeed, many other kinds of content can be added, e.g.:

- lists
- blockquotes
- code blocks
- nested admonitions
///
```

## Advanced options

### type

The base `admonition` is special because it is built into the markdown extension and supports the `type` configuration option, which configures the subclass:

<div class="code-example" markdown="1">

/// admonition | My Title
    type: custom

This is an admonition of the custom type **custom**,
which has not been defined in `wmk_config.yaml`.

You will need to add CSS rules if you want to make this
type visually distinctive.
///

</div>
```markdown
/// admonition | My Title
    type: custom

This is an admonition of the custom type **custom**,
which has not been defined in `wmk_config.yaml`.

You will need to add CSS rules if you want to make this
type visually distinctive.
```

### attrs

You can always add an `attrs` configuration option in order to (e.g.) add an extra class or ID to the admonition element:

<div class="code-example" markdown="1">

/// note | Note with an ID
    attrs: {class: special, id: special-1, data-custom: abc123}

This is a Note with a special class and ID.
It also has a `data-custom` attribute.
///

</div>

```markdown
/// note | Note with an ID
    attrs: {class: special, id: special-1, data-custom: abc123}

This is a Note with a special class and ID.
It also has a `data-custom` attribute.
///
```

