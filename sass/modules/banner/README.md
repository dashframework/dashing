# Dashing Cards
A card can be used to contain information such as text, buttons, links, and forms. View an [example](http://dashframework.github.io/dashing//example/templates/card/example.html) of Dashing cards.

## Card Configurations
| Card class               | Effect               | Notes               |
|--------------------------|----------------------|---------------------|
| `.card` | Standard card | *Required* |
| `.card--header` | Header container |  |
| `.card--content` | Content container |  |
| `.card--footer` | Footer container |  |
| `.is-selectable` | Adds hover styles | Use when the whole card is selectable |
| `.has-border` | Applies border separator to header or footer | Add the class to `.card--header` or `.card--footer` |
| `hr` | Create line separation | An &lt;hr&gt; within `.card--header`, `.card--content` or `.card--footer` respects the `$grid-gutter`. An &lt;hr&gt; outside of `.card--header`, `.card--content` or `.card--footer` spans edge to edge.|


## Usage

Cards are based on the structure of having a header, content, and footer.

```html
<div class="card">

  <div class="card--header">
    <h3>Header</h3>
  </div>

  <div class="card--content">
    <fieldset class="row row--nested">
      <div class="column column--third column--nested">
        <label>Label</label>
        <input type="text">
      </div>
      <div class="column column--third column--nested">
        <label>Label</label>
        <input type="text">
      </div>
      <div class="column column--third column--nested">
        <label>Label</label>
        <input type="text">
      </div>
    </fieldset>
  </div>

  <div class="card--footer">
    <button class="button button--green">Submit</button>
    <button class="button button--gray button--transparent">Cancel</button>
  </div>
</div>
```

> Note: Use the `.row--nested` and `.column--nested` class when placing `.row` and `.column` elements inside `.card--content`.

If you only require two sections of a card, simply use the `.card--header` and `.card--footer`, and omit the `.card--content`

```html
<div class="card">

  <div class="card--header">
    <h3>Header</h3>
  </div>

  <div class="card--footer">
    <button class="button button--green">Save</button>
  </div>
</div>
```
