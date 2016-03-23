# Forms
View an [example](http://dashframework.github.io/dashing/sass/modules/forms/example.html) of Dashing Forms in use

## Fieldset
Every form element within Dashing is **required** to be placed within a fieldset. This ensures the correct styles will be applied throughout, without having to add extra classes to each element.

### Supported input types
* text
* select
* date
* time
* month
* email
* number
* password
* tel
* range
* radio
* checkbox
* file
* textarea

##### Configurations
| Form attributes        | Effect                                           | Notes                                                     |
|------------------------|--------------------------------------------------|-----------------------------------------------------------|
| `fieldset`             | Drives styles for inputs and labels              | *Required* Applied as a container for inputs and labels   |
| `.inline`              | Places labels inline with the input type         | Apply `.inline` to label elements                         |
| `.error`               | Adds error styles to input, label and message    | Apply `.error` to fieldset elements                       |
| `.warning`             | Adds warning styles to input, label and message  | Apply `.warning` to fieldset elements                     |
