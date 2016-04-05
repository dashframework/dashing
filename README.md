# Dashing
Stylish framework for web apps

## Getting Started

### Working with the SASS

#### 1. Include Normalize

In your main application sass file first include normalize. We include a version of normalize that we keep up to date with or you can include Normalize directly.

```scss
@import "/bower_components/dashing/sass/vendor/normalize";
```

You could optionally use the normalize project directly

#### 2. Include Base

```scss
@import "/bower_components/dashing/sass/base/base";
```

#### 3. Optionally include an overrides file to customize the default variables

```scss
@import "overrides";
```
This is a custom file you create and include from your styles directory.

#### Include Modules

```scss
@import "/bower_components/dashing/sass/modules/modules";
```


### Working with the CSS

```html
<link rel="stylesheet" href="/bower_components/dashing/dashing.css">
```


### Browser Support

| Chrome | Edge | Firefox | Opera | IE | Safari |
|--------|------|---------|-------|----|--------|
| Latest | Latest | Latest | Latest | IE 11+ | Safari 8+ |

### Examples

Every module contains an example file that allows you to preview the look and feel of each feature.

* [Actions](http://dashframework.github.io/dashing/sass/modules/actions/example.html)
* [Colors](http://dashframework.github.io/dashing/sass/base/colors/example/example.html)
* [Forms](http://dashframework.github.io/dashing/sass/modules/forms/example.html)
* [Grid](http://dashframework.github.io/dashing/sass/modules/grid/example.html)
* [Navigation](http://dashframework.github.io/dashing/sass/modules/navigation/example/example-1.html)


## Development

Clone the repository with git:

```bash
git clone https://github.com/dashframework/dashing.git
```

TODO: Add more
