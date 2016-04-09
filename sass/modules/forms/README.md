# Forms
View an [example](http://dashframework.github.io/dashing/sass/modules/forms/example.html) of Dashing Forms in use

## Fieldset
Every form element within Dashing is **required** to be placed within a fieldset. This ensures the correct styles will be applied throughout, without having to add extra classes to each element.

### Included Input Types
* text
* select
* email
* number
* password
* tel
* range
* radio
* checkbox
* file
* textarea
* *date*
* *time*
* *month*

> **Note:** The date, time, and month input types are currently not supported in IE, Firefox, and Safari

## Form Configurations
| Form attributes        | Effect                                           | Notes                                                     |
|------------------------|--------------------------------------------------|-----------------------------------------------------------|
| `fieldset`             | Drives styles for inputs and labels              | *Required* Applied as a container for inputs and labels   |
| `.inline`              | Places labels inline with the input type         | Apply `.inline` to label elements                         |
| `.error`               | Adds error styles to input, label and message    | Apply `.error` to fieldset elements                       |
| `.warning`             | Adds warning styles to input, label and message  | Apply `.warning` to fieldset elements                     |

## Custom Checkbox Configurations

Custom checkboxes have a default color of `$blue` when active. If you would like to change the theme color of custom checkboxes to better integrate with your App, replace these variables in your overwrite file.

| Form attributes        | Effect                                           | Notes                                                     |
|------------------------|--------------------------------------------------|-----------------------------------------------------------|
| `.checkbox--custom`    | Utilizes a custom theme for checkboxes           | *Required* to use custom checkboxes. Apply `.checkbox--custom` to fieldset elements and place the `label` *after* your `input`|
| `fieldset`             | Drives styles for inputs and labels              | *Required* Applied as a container for inputs and labels   |
| `.inline`              | Places labels inline with the input type         | Apply `.inline` to label elements                         |
| `.error`               | Adds error styles to input, label and message    | Apply `.error` to fieldset elements                       |
| `.warning`             | Adds warning styles to input, label and message  | Apply `.warning` to fieldset elements                     |


## Usage

### Using an input

```html
<fieldset class="row">
  <div class="column column--full">
    <label>Label</label>
    <input type="text"/>
  </div>  
</fieldset>
```

### Creating a form

Review how to use the grid [here](https://github.com/dashframework/dashing/tree/develop/sass/modules/grid)

```html
<form>
  <fieldset class="row">
    <div class="column column--half">
      <label>Label</label>
      <input type="text">
    </div>
    <div class="column column--half">
      <label>Label</label>
      <input type="text">
    </div>
  </fieldset>
</form>
```

### Custom Checkboxes

Added a custom theme to your

```html
<div class="row">
  <fieldset class="column column--full checkbox--custom">
    <input type="text"/>
    <label class="inline">Checkbox Label</label>
  </fieldset>  
</div>
```
