# Dashing Custom Lists
An ordered list should imply a sequence or order needs to happen. They are commonly used when giving instructions. View an [example](http://dashing.samaritanministries.org/example/templates/lists/) of Dashing Lists.

## Custom List Configurations
| Tag class               | Effect               | Notes               |
|----------------------------|----------------------|---------------------|
| `.ordered-list--custom` | Standard list, gray circle with black text | *Required* |

> **Note:** When adding other elements within a custom ordered list, the code will automatically add `text-indent` to any child elements to make sure they align properly with the `<li>` tags.

## Customization

### Custom List Color
To create a custom list color, just include the ``.ordered-list--custom` class and specify your new class immediately after. In your new class, use the mixin to generate the correct styles.
```scss
@mixin ordered-list($circle-color, $text-color)
```

```scss
//Example: Custom Colored Lists
.ordered-list--sharing-blue {
  @include ordered-list($sharing-blue, $white);
}
```
