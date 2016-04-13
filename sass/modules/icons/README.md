# Dashing Icons

View an [example](http://dashframework.github.io/dashing/sass/modules/icons/example.html) of Dashing Icons in use.

> Note: This is by all means not a complete icon set. We will continue to add to it as needed. If you have an idea for an icon that isn't included, create an issue and we'll review it.

## Importing Icons

To use the Dashing font icon set, you'll need to be sure to link to the font file in your main application Sass file.

> Note: The link displayed here may be different than what is in your project. You may need to alter the source url location.

```scss
@font-face {
  font-family: 'dashing-icons';
  src: url('../../bower_components/dashing/font/dashing-icons.woff') format('woff');
}
```

### Icon Configurations

A default icon is 16px &times; 16px and has a color of `$gray-700`.

| Icon Class | Effect | Notes |
|------------|--------|-------|
| `.dashing-icon` | The default class for the dashing font icon set | *Required* |
| `.dashing-icon--add` | Includes the "add" icon | View the [example page](http://dashframework.github.io/dashing/sass/modules/icons/example.html) for a complete list of icon names |

### Icon Color Configurations

| Color Class | Effect | Notes |
|-------------|--------|-------|
| `.dashing-icon--blue` | Changes the icon color to blue | |
| `.dashing-icon--gray` or `.dashing-icon--grey` | Changes the icon color to gray | |
| `.dashing-icon--green` | Changes the icon color to green | |
| `.dashing-icon--orange` | Changes the icon color to orange | |
| `.dashing-icon--purple` | Changes the icon color to purple | |
| `.dashing-icon--red` | Changes the icon color to red | |

> Note: Color variables are defined in [`_colors.scss`](../../base/colors)

## Usage

### Create a custom icon color

To create a custom icon color, simply define your color name and assign a color variable or hex color the the `color` attribute.

```scss
.dashing-icon--yellow:before {
  color: $yellow;
}
```
