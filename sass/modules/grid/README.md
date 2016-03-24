# Grid
View an example of Dashing Grid.

> **Tip:** We apply border-box to every element so the border and padding of an element is included in the width of the columns.

## Grid
Being able to seamlessly translate your App between multiple devices is a must. User experience can be greatly damaged if your App doesn’t translate to the device of their choice. Using a responsive grid fixes that problem, allowing your content to easily translate to any device.

### Configurations
| Elements         | Effect                          | Notes                                               |
|------------------|---------------------------------|-----------------------------------------------------|
| `.row`           | Places                          | *Required*                                          |
| `.column`        | Places                          | *Required*. Columns by default have 100% width      |
| `.column--full`  | Applies 100% width to a column  |                                                     |
| `.column--half`  | Applies 50% width to a column   |                                                     |


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
