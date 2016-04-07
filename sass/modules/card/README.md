# Dashing Cards
A card can be used to contain information such as text, buttons, links, and forms. View an [example](http://dashframework.github.io/dashing/sass/modules/card/example.html) of Dashing cards.

## Card Configurations
| Card class               | Effect               | Notes               |
|--------------------------|----------------------|---------------------|
| `.card` | Standard card | *Required* |
| `.card--header` | Header container |  |
| `.card--content` | Content container |  |
| `.card--footer` | Footer container |  |
| `.is-selectable` | Adds hover styles | Use when the whole card is selectable |
| `hr` | Create line separation | An &lt;hr&gt; within a card spans the card edge to edge |


## Usage

Cards are based on the structure of having a header, content, and footer.

```html
<div class="card">

  <div class="card--header">
    <div class="row">
      <div class="column column--full">
        <h3>Header</h3>
      </div>
    </div>
  </div>

  <div class="card--content">
    <fieldset class="row">
      <div class="column column--full">
        <label>Label</label>
        <input type="text">
      </div>
    </fieldset>
  </div>

  <div class="card--footer">
    <div class="row">
      <div class="column column--full">
        <button class="button button--green">Submit</button>
      </div>
    </div>
  </div>
</div>
```

If you only require two sections of a card, simply use the `.card--header` and `.card--footer`, and omit the `.card--content`

```html
<div class="card">

  <div class="card--header">
    <div class="row">
      <div class="column column--full">
        <h3>Header</h3>
      </div>
    </div>
  </div>

  <div class="card--footer">
    <div class="row">
      <div class="column column--full">
        <button class="button button--green">Save</button>
      </div>
    </div>
  </div>
</div>
```
