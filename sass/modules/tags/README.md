# Dashing Tags
View an example(link coming soon) of Dashing tags. Tag colors currently are being adjusted for contrast and readability. 

> **Tip:** When placing text within a tag, strive to keep it between one and two words. Anything longer can become too overpowering and hard to read at a quick glance.

## Tag Configurations
| Tag class               | Effect               | Notes               |
|----------------------------|----------------------|---------------------|
| `.tag` | Standard tag, gray with colored text and hover states | *Required* |
| `.tag--solid` | Colored tag with white or black text | add to ".tag"|
| `.tag--counter` | Contains two tags, the second showing information (such as a number) regarding the first | create a container called .tag--counter and place two .tag items within |
| `.tag--no-link` | Removes hover and focus effects  |-|

## Color Configuration
| Tag class               | Effect               | Notes               |
|----------------------------|----------------------|---------------------|
| `.tag--primary` | Applies the primary color effect | The default primary tag color|
| `.tag--secondary` | Applies the secondary color effect | The default secondary tag color
| `.tag--blue` | Applies a blue color effect | |
| `.tag--gray` or `.tag--grey`| Applies a gray color effect | |
| `.tag--green` | Applies a green color effect | |
| `.tag--orange` | Applies a orange color effect | |
| `.tag--purple` | Applies a purple color effect | |
| `.tag--red` | Applies a red color effect | |

> Note: Color variables are defined in [`_colors.scss`](../../base/colors)

## Usage

### Default tag

(Note that tags are thought to be linked by default, if intending linkage use an anchor element.)

```html
<a class="tag">Default Tag</a>
```

### Solid tag

Use a solid tag for a tag that is more vibrant and needs attention. Add a color class when using this form of tag.

```html
<a class="tag tag--blue tag--solid">Solid Tag</a>
```

### Large tag

Use a large tag for tags that need more attention.

```html
<a class="tag tag--blue tag--solid tag--large">Solid Tag</a>
```

### Counter Tags

Pair two tags together inside .tag--counter to make a tag with an included second area that can help describe the tag it's attached to.

```html
<div class="tag--counter">
  <a class="tag tag--solid">Default Tag</a>
  <a class="tag tag--solid">1</a>
</div>
```

## Customization

### Custom tag color
To create a custom tag color, just include the .tag and .tag--counter classes and specify your new class within. Not that .tag uses a mixes that supplies several variables for color effects.

```scss
//Example: Custom Tags
.tag {
  &.custom-tag-color {
    @include tag($background-color: #FAA443, $color: $black, $border-color: #FAA443, $hover-color: $black, $hover-border-color: #FAA443)
  }
}

.tag--counter {
  #{$tag-hover-rules} {
    &.custom-tag-color {
      border-color: orange;
    }
  }
}
```