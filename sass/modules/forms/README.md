# Forms
View an [example](http://dashframework.github.io/dashing//example/templates/forms/example.html) of Dashing Forms in use

### Fieldset
Every form element within Dashing is **required** to be placed within a fieldset. This ensures the correct styles will be applied throughout, without having to add extra classes to each element.

## Included Input Types
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
| Form classes | Effect | Notes |
|--------------|--------|-------|
| `fieldset` | Drives styles for inputs and labels | *Required* Applied as a container for inputs and labels |
| `.inline` | Places labels inline with the input type | Apply `.inline` to label elements |
| `.has-error` | Adds error styles to input, label and message | Apply `.has-error` to fieldset elements |
| `.has-warning` | Adds warning styles to input, label and message | Apply `.has-warning` to fieldset elements |
| `.select--has-icon` | Adds down arrow icon to select inputs | Apply `.select--has-icon` to `fieldset` elements |

## Custom Checkbox Configurations
Custom checkboxes have a default color of `$blue` when active. If you would like to change the color theme of custom checkboxes to better integrate with your App, replace these variables in your `theme.scss` file.

**`.checkbox--custom`**
* This class is **required** for custom checkboxes.
* Apply this class to the parent element and place the label *after* your `input`.

**`.checkbox--active`**
* Color of checkbox when checked
* Default color is `$blue`

**`.checkbox--icon`**
* Color of checkmark icon when checked
* Default color is `$white`

**`.checkbox--focus`**
* Color of border around checkbox when focused
* Default color is `$blue-300`

**`.checkbox--disabled`**
* Color of checkbox when checked and disabled
* Default color is `$gray-150`

**`.checkbox--icon-disabled`**
* Color of checkmark icon when checked and disabled
* Default color is `$gray-500`

> **Note**: To alter the checkbox variable colors in your App, be sure to place the variable references in your [theme.scss file](https://github.com/dashframework/dashing#working-with-sass).

## Custom Radio Button Configurations
Custom checkboxes have a default color of `$blue` when active. If you would like to change the color theme of custom checkboxes to better integrate with your App, replace these variables in your `theme.scss` file.

**`.radio--custom`**
* This class is **required** for custom radio buttons.
* Apply this class to the parent element and place the label *after* your `input`.

**`.radio--active`**
* Color of radio button when checked
* Default color is `$blue`

**`.radio--icon`**
* Color of radio button icon when checked
* Default color is `$white`

**`.radio--focus`**
* Color of border around radio button when focused
* Default color is `$blue-300`

**`.radio--disabled`**
* Color of radio button when checked and disabled
* Default color is `$gray-150`

**`.radio--icon-disabled`**
* Color of radio button icon when checked and disabled
* Default color is `$gray-500`

> **Note**: To alter the radio variable colors in your App, be sure to place the variable references in your [theme.scss file](https://github.com/dashframework/dashing#working-with-sass).

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

### Adding a dropdown icon to a select menu
By default, select menus will not include a dropdown icon. To include this, add the class `.select--has-icon` to the parent `fieldset` container.

```html
<fieldset class="column column--full select--has-icon">
  <label for="dashing-menu">Dashing Select Menu</label>
  <select>
    <option>Option 1</option>
    <option>Option 2</option>
    <option>Option 3</option>
  </select>
</fieldset>
```

### Inline Error Messages
```html
<form>
  <fieldset class="row">
    <div class="column column--full has-error">
      <label>Label</label>
      <input type="text">
      <ul class="message">
        <li>There is an error here!</li>
      </ul>
    </div>
  </fieldset>
</form>
```

>**Note**: When filling out a form, users will often be focused on the particular input they're working on. For this reason, error messages should be inline with the current form. This will ensure the error will be clearly displayed to the user.

### Custom Checkboxes
Add a custom theme to your checkboxes by including the `.checkbox--custom` class to your `fieldset`.

>Note: These styles will only work if you include the input first, followed by a label.

```html
<div class="row">
  <fieldset class="column column--full checkbox--custom">
    <input type="checkbox" id="dashing-checkbox"/>
    <label class="inline" for="dashing-checkbox">Checkbox Label</label>
  </fieldset>  
</div>
```

### Custom Radio Button
Add a custom theme to your radio buttons by including the `.radio--custom` class to your `fieldset`.

>Note: These styles will only work if you include the input first, followed by a label.

```html
<div class="row">
  <fieldset class="column column--full radio--custom">
    <input type="radio" id="dashing-radio"/>
    <label class="inline" for="dashing-radio">Radio Label</label>
  </fieldset>  
</div>
```

### Custom Range Slider
Add a custom theme to your radio buttons by including the `.range--custom` class to your `fieldset`.

```html
<div class="row">
  <fieldset class="column column--full range--custom">
    <label for="dashing-range">Dashing Range</label>
    <input type="range" id="dashing-range"/>
  </fieldset>
</div>
```
