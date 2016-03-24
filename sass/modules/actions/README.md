# Dashing Actions
View an [example](http://dashframework.github.io/dashing/sass/modules/actions/example.html) of Dashing buttons and action links

## Buttons
Buttons have a strong visual hierarchy and should be used to indicate important actions to your user.

> **Tip:** When placing text within a button, keep it between one and two words. Anything longer can become too overpowering and hard to read at a glance.

### Configurations
| Button class                  | Effect                               | Notes                                                       |
|-------------------------------|--------------------------------------|-------------------------------------------------------------|
| `.button`                     | Standard button                      | *Required*                                                  |
| `.disabled`                   | Disabled button                      | You may use the `.disabled` class or `[disabled]` attribute |
| `.button--primary`            | Applies the primary color effect     | The default primary button color is `$blue`                 |
| `.button--secondary`          | Applies the secondary color effect   | The default secondary button color is `$gray`               |
| `.button--green`              | Applies a green color effect         | Review the base color mixins that are included for buttons  |

Note: Color variables are defined in [`_colors.scss`](../../base/colors)

### How to include a Dashing button
1. Create a new `<button>` element
  ```html
    <button>Save</button>
  ```

2. Add the appropriate `class` names to style your button
  ```html
    <button class="button button--blue">Save</button>
  ```

3. That's it! You're ready to use a Dashing button

### Creating a custom button color with Sass
To create a custom button color, just include the button `mixin` and plug in your background-color and text color as a *Sass variable* or *hex color code*.

```scss
  .button--success {
    @include button($background-color: $green, $color: $white);
  }

  .button--warning {
    @include button($background-color: #DD9331, $color: #FFFFFF);
  }
```

-----

## Action Links
An Action Link is made up of text and is given a default color of `$blue` to indicate action.

### Configurations
| Action class                  | Effect                  | Notes                                               |
|-------------------------------|-------------------------|-----------------------------------------------------|
| `.action`                     | Defines an action       | *Required*                                          |
| `.action--primary`            | Primary action link     | The default primary action link is `$blue`          |
| `.action--secondary`          | Secondary action link   | The default secondary action link is `$gray`        |

Note: Color variables are defined in [`_colors.scss`](../../base/colors)

### Creating a custom action link color with Sass
To create a custom action link color, include this mixin and plug in your desired text color as a *Sass variable* or *hex color code*.

```scss
  .action--blue {
    @include action($blue);
  }

  .action--red {
    @include action(#DD4B39);
  }
```
