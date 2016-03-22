# Actions
Dashing buttons and action links

## Action Links
An Action Link is made up of text and is given a default color of `$blue` to indicate action.

##### Configurations
| Action class                  | Effect                  | Notes                                               |
|-------------------------------|-------------------------|-----------------------------------------------------|
| `.action`                     | Defines an action       | *Required*                                          |
| `.action--primary`            | Primary action link     | The default primary action link is `$blue`          |
| `.action--secondary`          | Secondary action link   | The default secondary action link is `$gray`        |

> Color variables are defined in [`_colors.scss`](../../base/colors)

### Creating a custom action link color
To create a custom action link color, include this mixin and plug in your desired text color as a *Sass variable* or *hex color code*.

```scss
  .action--blue {
    @include action($blue);
  }

  .action--red {
    @include action(#DD4B39);
  }
```

-----

## Buttons
Buttons have a stronger visual hierarchy compared action links, and should be used to indicate important actions to your user.

##### Configurations
| Button class                  | Effect                               | Notes                                                       |
|-------------------------------|--------------------------------------|-------------------------------------------------------------|
| `.button`                     | Standard button                      | *Required*                                                  |
| `.disabled`                   | Disabled button                      | You may use the `.disabled` class or `[disabled]` attribute |
| `.button--primary`            | Applies the primary color effect     | The default primary button color is $blue                   |
| `.button--secondary`          | Applies the secondary color effect   | The default secondary button color is $gray                 |
| `.button--green`              | Applies a green color effect         | Review the base color mixins that are included for buttons  |

> Color variables are defined in [`_colors.scss`](../../base/colors)

### Creating a custom button color
To create a custom button color, just include this mixin and plug in your background-color and text color as a *Sass variable* or *hex color code*.

```scss
  .button--success {
    @include button($background-color: $green, $color: $white);
  }

  .button--warning {
    @include button($background-color: #DD9331, $color: #FFFFFF);
  }
```
