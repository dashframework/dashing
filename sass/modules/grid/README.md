# Grid
View an [example](http://dashframework.github.io/dashing//example/templates/grid/example.html) of Dashing Grid.

> **Tip:** We apply border-box to every element so the border and padding of an element is included in the width of the columns.

## Grid
Being able to seamlessly translate your App between multiple devices is a must. User experience can be greatly damaged if your App doesn’t translate to the device of their choice. Using a responsive grid fixes that problem, allowing your content to easily translate to any device.

### Configurations
| Elements | Effect | Notes |
|----------|--------|-------|
| `.row`                   | Centers the container and applies left padding | *Required*. Left padding in rows compensates for the missing left padding in columns. |
| `.column`                | Places top, right, and bottom padding on element | *Required*. Columns by default have 100% width. |
| `.column--nested`        | Applies half the padding of `$grid-gutter` | Use `.column--nested` to reduce the default padding in nested elements |
| `.column--full`          | Applies 100% width to a column | |
| `.column--two-thirds`    | Applies 75% width to a column | |
| `.column--three-fourths` | Applies 66.666% width to a column | |
| `.column--half` | Applies 50% width to a column | |
| `.column--third` | Applies 33.333% width to a column | |
| `.column--fourth` | Applies 25% width to a column | |
| `.column--sixth` | Applies 16.666% width to a column | |
| `.column--eighth` | Applies 12.5% width to a column | |

> **Note:** All column widths flow to 100% on the phone form factor. If you would like to retain your column size, you will have to add a custom class to override the width sizing Dashing provides.

### How to use the grid
1. Create a new `<div>` element with the class of `.row`
  ```html
    <div class="row"></div>
  ```

2. Add a new `<div>` with the class of `.column`
  ```html
    <div class="row">
      <div class="column"></div>
    </div>
  ```

3. Add a descriptive class name to the `.column` to define the size of your column
  ```html
    <div class="row">
      <div class="column column--half"></div>
    </div>
  ```
