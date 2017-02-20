# Dashing Tables
View an [example](http://dashframework.github.io/dashing//example/templates/table/example.html) of Dashing Tables in use.

## Table Container Configurations

**`.table--container`**
* This class is **required**.
* Applies the base styles required. This element should be the parent container of the `table` element.

**`.has-border`**
* Applies a rounded border to the outer container of the table
* Include with the `.table--container` element

## Table Configurations

**`.table`**
* This class is **required**.
* Applies the base styles required to use a dashing table. By default, the table color white.

**`.has-dividers`**
* Applies line dividers to each table row
* You may the `$table--dividers` variable in your [theme.scss](https://github.com/dashframework/dashing/tree/master/sass/theme) file to change the default color of the dividing lines.
* The default color is `#EDEDED`;
* [View Example](http://dashframework.github.io/dashing/sass/modules/table/example/has-dividers.html)

**`.has-hover`**
* Applies a hover effect to each table row
* By default, the hover state darkens the background-color of the table row by 7%.
* [View Example](http://dashframework.github.io/dashing/sass/modules/table/example/has-hover.html)

**`.has-row-color`**
* Applies alternating color to the table rows
* You may customize these colors by changing the `$table--odd-row` and `$table--even-row` variables in your [theme.scss](https://github.com/dashframework/dashing/tree/master/sass/theme) file.
* The default color for odd numbered rows is `#F2F2F2` and for even numbered rows is `#FFFFFF`;
* To customize the header row color, you may alter the `$table--header-row` variable in your [theme.scss](https://github.com/dashframework/dashing/tree/master/sass/theme) file.
* [View Example](http://dashframework.github.io/dashing/sass/modules/table/example/has-row-color.html)


## Usage

### Default Table Structure

```html
<div class="table--container">
  <table class="table">
    <thead>
      <tr>
        <th>First</th>
        <th>Last</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Jack</td>
        <td>Shephard</td>
      </tr>
    </tbody>
  </table>
</div>
```


### Table Structure with All Options Included

```html
<div class="table--container has-border">
  <table class="table has-hover has-dividers has-row-color">
    <thead>
      <tr>
        <th>First</th>
        <th>Last</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Jack</td>
        <td>Shephard</td>
      </tr>
    </tbody>
  </table>
</div>
```

### Customizable Elements

```scss
//Colors the table header
$table--header-row: $white !default;

//Colors the odd numbers rows (requires the class .has-row-color)
$table--odd-row: $gray-50 !default;

//Colors the even numbers rows (requires the class .has-row-color)
$table--even-row: $white !default;

//Adds dividing lines to the rows (requires the class .has-dividers)
$table--dividers: $gray-100 !default;

//Colors the containing border of the table (requires the class .has-border)
$table--border: $gray-200 !default;
```

> Note: These are the default color options. If you would like to alter the colors, just include the same variable in your [theme.scss](https://github.com/dashframework/dashing/tree/master/sass/theme) file.
