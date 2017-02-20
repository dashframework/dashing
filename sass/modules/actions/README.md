# Dashing Actions
View an [example](http://dashframework.github.io/dashing//example/templates/actions/example.html) of Dashing buttons.

> **Tip:** When placing text within a button, strive to keep it between one and two words. Anything longer can become too overpowering and hard to read at a quick glance.

## Button Configurations
| Button class               | Effect               | Notes               |
|----------------------------|----------------------|---------------------|
| `.button` | Standard button | *Required* |
| `.button--small` | Small button | Adds styles for a small button |
| `.button--large` | Large button | Adds styles for a large button |
| `.button--border` | Displays transparent background color with colored border | |
| `.button--transparent` | Displays transparent background color | Review [documentation](https://github.com/dashframework/dashing/tree/develop/sass/modules/actions#transparent-button) for correct syntax |
| `.button--icon` | Style for actionable icons | Review [documentation](https://github.com/dashframework/dashing/tree/develop/sass/modules/actions#button-icons) for correct syntax |
| `disabled` | Disabled button | Use the disabled attribute to prevent tabbing to disabled buttons |
| `.flow-opposite` | Reverses margin for  ||

## Color Configuration
| Button class               | Effect               | Notes               |
|----------------------------|----------------------|---------------------|
| `.button--primary` | Applies the primary color effect | The default primary button color is `$blue` |
| `.button--secondary` | Applies the secondary color effect | The default secondary button color is `$gray` |
| `.button--blue` | Applies a blue color effect | |
| `.button--gray` or `.button--grey`| Applies a gray color effect | |
| `.button--green` | Applies a green color effect | |
| `.button--orange` | Applies a orange color effect | |
| `.button--purple` | Applies a purple color effect | |
| `.button--red` | Applies a red color effect | |

> Note: Color variables are defined in [`_colors.scss`](../../base/colors)

## Usage

### Default button

```html
<button class="button button--blue">Save</button>
```

### Transparent button

Use a transparent button when you don't want an action to be as prominent.

```html
<button class="button button--primary button--transparent">
  Save
</button>
```

### Border button

```html
<button class="button button--primary button--transparent">
  Save
</button>
```

### Adding an icon to your button

```html
<button class="button button--primary">
  <i class="icon icon--search icon--blue"></i>
  Search
</button>
```

### Button icons

Button icons are used to add action to a single ui icon. Just add the `.button--icon` class to your button to get started.

#### Default button icon

```html
<button class="button button--icon button--primary">
  <i class="icon icon--add icon--white"></i>
</button>
```

#### Small button icon

```html
<button class="button button--icon button--red">
  <i class="icon icon--add icon--white"></i>
</button>
```

#### Transparent button icon

Adding the `.button--transparent` class to your `.button--icon` removes the background color.

```html
<button class="button button--transparent button--icon button--icon--small">
  <i class="icon icon--question-filled icon--gray"></i>
</button>
```

#### Main button icon

```html
<button class="button button--icon button--icon--main button--blue">
  <i class="icon icon--add icon--white"></i>
</button>
```

### Toggle button

```html
<ul class="button-group button-group--blue">
  <li class="button--radio">
    <input type="radio" name="options" id="blue1" checked>
    <label for="blue1" class="button">Left</label>
  </li>
  <li class="button--radio">
    <input type="radio" name="options" id="blue2">
    <label for="blue2" class="button">Middle</label>
  </li>
  <li class="button--radio">
    <input type="radio" name="options" id="blue3">
    <label for="blue3" class="button">Right</label>
  </li>
</ul>
```

## Customization

### Custom Button color
To create a custom button color, just include the button `mixin` and plug in your background-color and text color as a *Sass variable* or *hex color code*.

```scss
  .button--success {
    @include button($background-color: $green, $color: $white);
  }
```

### Custom Transparent Button

```scss
  .button--transparent.button--custom {
    @include button($background-color: transparentize(white, 1), $color: $gray-600c);
  }
```

### Custom Border Radius
To set a custom border radius for your buttons, include either one of the pre-defined sass variables, or create a custom radius in your themes file. By default, buttons have the `%button--rounded` styles extended to it.

##### Use one of the pre-defined sass variable
```scss
  #{$buttons} { @extend %button--smooth; }
```

##### Create a custom border radius
```scss
  #{$buttons} { border-radius: 8px; }
```

### Custom Toggle Button
To create a custom toggle button, copy the below block of code and replace your desired background-color, text color and checked (active) color. Replace the `.button-group--custom` class with your own.

```scss
  .button-group.button-group--custom {
    .button { @include button($background-color: $gray-200, $color: $gray-900); }
    .button--radio input:checked ~ label { background-color: $green; color: $white; }
  }
```

### Custom Border Radius for Toggle Button
To set a custom border radius for your toggle buttons, create a custom radius in your themes file. Be sure to overwrite both the `first-of-type` and `last-of-type`.

```scss
  .button-group.button--radio:first-of-type label { border-radius: 50px 0 0 50px; }
  .button-group.button--radio:last-of-type label { border-radius: 0 50px 50px 0; }
```
