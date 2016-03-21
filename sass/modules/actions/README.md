# Actions
Dashing buttons and action links

## Action Links
An Action Link is made up of text and is given a default `$blue` color to indicate action.

## Buttons
Buttons have a stronger visual hierarchy compared action links, and should be used to indicate important actions to your user.

> To create a custom button color, just include this mixin and plug in your background-color and text color. Dashing will take care of the rest.

```
  .custom-button {
    @include button($background-color: [button color], $color: [text color]);
  }
```
