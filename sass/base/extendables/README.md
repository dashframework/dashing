# Dashing Extendables
To use extendables, just include the `@extend` function within a `class` or `id`. Extendables can only be extended into other classes, they cannot stand on their own.

## Usage

### Custom Scrollbar

To use a custom scrollbar, just extend `%scrollbar-custom--light` or `%scrollbar-custom--dark` to the scrollable container.

```scss
.container {
  @extend %scrollbar-custom--light;
}
```

You can create your own custom scrollbar by copying this code, adding it to your project and adjusting styles.

```scss
%scrollbar-custom--blue {
  &::-webkit-scrollbar-button { background-color: transparent; }
  &::-webkit-scrollbar-corner { background-color: transparent; }
  &::-webkit-scrollbar-track { background-color: transparent; }
  &::-webkit-scrollbar {
    background-color: transparent;
    height: 20px;
    width: 15px;
  }
  &::-webkit-scrollbar-thumb {
    background-clip: content-box;
    background-color: $blue;
    border: 4px solid transparent;
    border-radius: 10px;
    min-height: 2rem;
  }
}
```
