# Dashing
Stylish framework for web apps

## Getting Started

### Working with SASS

#### 1. Include Normalize

Include normalize first in your main application Sass file. We provide a version of normalize that we keep updated, or you may include normalize directly.

```scss
@import "/bower_components/dashing/sass/vendor/normalize";
```

> Note: You could optionally use the normalize project directly

#### 2. Include Base

Base files include variables, mixins, extendables, utilities and the dashing color scale.

```scss
@import "/bower_components/dashing/sass/base/base";
```

#### 3. Optional – Include an overrides file to customize the default variables

```scss
@import "overrides";
```
> Note: This is a custom file that you will need to create and include from your styles directory.

#### 4. Include Modules

```scss
@import "/bower_components/dashing/sass/modules/modules";
```


### Working with CSS

```html
<link rel="stylesheet" href="/bower_components/dashing/dashing.css">
```


### Browser Support

| Chrome | Edge | Firefox | Opera | IE | Safari |
|--------|------|---------|-------|----|--------|
| Latest | Latest | Latest | Latest | IE 11+ | Safari 8+ |


### What's Included

##### [Vendor](https://github.com/dashframework/dashing/tree/develop/sass/vendor)

* [Normalize](https://github.com/dashframework/dashing/tree/develop/sass/vendor)

##### [Base Styles](https://github.com/dashframework/dashing/tree/develop/sass/base)

* [Colors](https://github.com/dashframework/dashing/tree/develop/sass/base/colors)
* [Extendables](https://github.com/dashframework/dashing/tree/develop/sass/base/extendables)
* [Mixins](https://github.com/dashframework/dashing/tree/develop/sass/base/mixins)
* [Utilities](https://github.com/dashframework/dashing/tree/develop/sass/base/utilities)
* [Variables](https://github.com/dashframework/dashing/tree/develop/sass/base/variables)

##### [Modules](https://github.com/dashframework/dashing/tree/develop/sass/modules)

* [Actions](https://github.com/dashframework/dashing/tree/develop/sass/modules/actions)
* [Card](https://github.com/dashframework/dashing/tree/develop/sass/modules/card)
* [Forms](https://github.com/dashframework/dashing/tree/develop/sass/modules/forms)
* [Grid](https://github.com/dashframework/dashing/tree/develop/sass/modules/grid)
* [Navigation](https://github.com/dashframework/dashing/tree/develop/sass/modules/navigation)
* [Typography](https://github.com/dashframework/dashing/tree/develop/sass/modules/typography)

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
