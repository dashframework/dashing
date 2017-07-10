# Naming Conventions
Naming Conventions used throughout the Dashing Framework.

## Base Class

A base class describes a primary element, such as a button, card, container, etc.

```scss
//Example
.noun {  }

//Sample
.button {  }
```

## Subclasses

Use subclasses to alter the color, size and shape of the element. Subclasses should always reference the base class and use `--` to separate the subclass name from the base class.

```scss
//Example
.noun--adjective {  }

//Samples
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

## Parent-Child Relationships

To avoid errors in similarly named objects, follow this pattern when referencing child elements. Use `-` to separate child elements from their parent.

```scss
//Example
.noun {  }
.noun-noun {  }

//Samples
//Parent card class
.card {  }

//Child header class within a card
.card-header {  }
```

Here is an example of good parent-child nesting.

```html
<div class="card">
  <div class="card-header">
    <h3>Title</h3>
  </div>
</div>
```

## State

A state is typically something that is made to override default layout or module styles. Because of this, the use of `!important` is allowed, if needed.

```scss
//Example
.is-state {  }
.has-noun {  }

//Samples
.is-active {  }
.is-hidden {  }
.is-collapsed {  }
.is-selectable {  }
.has-border {  }
```

Use the state naming structure when adding override styles to an element.

```html
<li class="is-active"></li>
<div class="card is-collapsed"></div>
<div class="button is-hidden"></div>
<div class="card-header has-border"></div>
```

## Targeted Media Classes

An underscore is used to

```scss
//Example
.is-state {  }
.has-noun {  }

//Samples
.is-active {  }
.is-hidden {  }
.is-collapsed {  }
.is-selectable {  }
.has-border {  }
```

An underscore is used to apply a class to that media size. Use `_phone` to apply a class to the phone media query and below, `_tablet` to apply a class to tablet and above, and `_desktop` to apply the class to desktop size and above.

```html
<div class="button-group--vertical_phone"></div>
<div class="hidden_tablet"></div>
```
