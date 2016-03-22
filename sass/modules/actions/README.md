# Actions
Dashing buttons and action links

## Action Links
An Action Link is made up of text and is given a default `$blue` color to indicate action.

| Action class                  | Effect                               | Notes                                                      |
|-------------------------------|--------------------------------------|------------------------------------------------------------|
| `.action`                     | Defines an action                    | *Required*                                                 |
| `.action--primary`            | Primary action link                  | Colors are defined in [`_colors.scss`](../../base/colors)  |
| `.action--secondary`          | Secondary action link                | Colors are defined in [`_colors.scss`](../../base/colors)  |

### Creating a custom action link color
To create a custom action link color, include this mixin and plug in your desired text color *Sass variable* or *hex color code*.

```scss
  .custom-blue-action {
    @include action($blue);
  }

  .custom-red-action {
    @include action(#DD4B39);
  }
```

## Buttons
Buttons have a stronger visual hierarchy compared action links, and should be used to indicate important actions to your user.


| Button class                  | Effect                               | Notes                                                      |
|-------------------------------|--------------------------------------|------------------------------------------------------------|
| `.button`                     | Standard button                      | *Required*                                                 |
| `.disabled`                   | Disabled button                      | You may use the `.disabled` class or [disabled] attribute  |
| `.button--primary`            | Applies the primary color effect     | Colors are defined in [`_colors.scss`](../../base/colors)  |
| `.button--secondary`          | Applies the secondary color effect   | Colors are defined in [`_colors.scss`](../../base/colors)  |
| `.button--green`              | Applies a green color effect         | Review the base colors that are included for buttons       |

### Creating a custom button color
To create a custom button color, just include this mixin and plug in your background-color and text color *Sass variable* or *hex color code*.

```scss
  .custom-blue-button {
    @include button($background-color: $blue, $color: $white);
  }

  .custom-green-button {
    @include button($background-color: #2DB16C, $color: #FFFFFF);
  }
```
