# Naming Conventions
Naming Conventions used throughout the Dashing Framework.

## Base Class

A base class describes a base element, such as a button, card or container.

```scss
.button {  }
```

## Modifiers

Use modifiers to alter the color, size and shape of the base element. Modifiers should always reference the base class.

```scss
//Color Modifier
.button--blue {  }

//Size Modifier
.button--small {  }

//Shape Modifier
.button--rounded {  }
```

Here is an example of how to use a base class with modifiers.

```html
<button class="button button--blue button--small button--rounded"></button>
```

## State

A state is typically something that is made to override default layout or module styles. Because of this, the use of `!important` is allowed, if needed.

```scss
.is-active {  }
.is-hidden {  }
.is-collapsed {  }
.is-selectable {  }
.has-border {  }
```

Use the state naming structure when adding override styles to an element.

```html
<div class="card is-selectable"></div>
<div class="card is-collapsed"></div>
<div class="button is-hidden"></div>
```
