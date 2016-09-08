# Dashing
Stylish framework for web apps

[![Dashing Version](https://img.shields.io/badge/Version-0.3.10--beta-green.svg)]()

## Browser Support

| Chrome | Edge | Firefox | Opera | IE | Safari |
|--------|------|---------|-------|----|--------|
| Latest | Latest | Latest | Latest | IE 11+ | Safari 8+ |


## What's Included

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
* [Icons](https://github.com/dashframework/dashing/tree/develop/sass/modules/icons)
* [Navigation](https://github.com/dashframework/dashing/tree/develop/sass/modules/navigation)
* [Typography](https://github.com/dashframework/dashing/tree/develop/sass/modules/typography)

#### Examples

Every module contains an example file that allows you to preview the look and feel of each feature.

* [Actions](http://dashframework.github.io/dashing/sass/modules/actions/example.html)
* [Card](http://dashframework.github.io/dashing/sass/modules/card/example.html)
* [Colors](http://dashframework.github.io/dashing/sass/base/colors/example/example.html)
* [Forms](http://dashframework.github.io/dashing/sass/modules/forms/example.html)
* [Grid](http://dashframework.github.io/dashing/sass/modules/grid/example.html)
* [Icons](http://dashframework.github.io/dashing/sass/modules/icons/example.html)
* [Navigation](http://dashframework.github.io/dashing/sass/modules/navigation/example/example-1.html)
* [Typography](http://dashframework.github.io/dashing/sass/modules/typography/example.html)


# Getting Started

## Install the Component

The Dashing Framework is delivered as a [bower](bower.io) component. Note that Bower requires [node](https://nodejs.org/en/download/), [npm](https://docs.npmjs.com/cli/install) and [git](https://git-scm.com/downloads). If you don't yet have these installed, do this first.

1. Install bower
  ```grunt
  npm install -g bower
  ```

2. Create a `bower.json` file
  ```grunt
  bower init
  ```

3. Install the dashing bower component. This will install the Dashing files in your project's `bower_components` folder.
  ```grunt
  bower install dashing --save
  ```

## Setting up your project with SASS

Sass is a great way to keep your project clean, organized and easy-to-manage. If you are unfamiliar with the workings of Sass, learn more [here](http://sass-lang.com/guide).

### Including Dashing Styles

Copy and paste the following code snippet into your project. This will pull in normalize, along with Dashing base and module styles.

> Note: If you wish to overwrite Dashing styles to add customization your project, skip through this step and head to the [next section](https://github.com/dashframework/dashing/#including-custom-styles).

```scss
@import "/bower_components/dashing/sass/vendor/normalize";
@import "/bower_components/dashing/sass/base/base";
@import "/bower_components/dashing/sass/modules/modules";
```

### Including Custom Styles

While the Dashing Style Framework does provide a lot of core modules for you to utilize, it most likely won't have everything you need. Follow the [SMACSS](https://smacss.com/) syntax in order to add a clean, organized structure to your custom stylesheets.

1. Create five individual folders, named `base`, `layout`, `modules`, `state` and `theme`.

2. Within each folder, create a stylesheet to match. (e.g. You would create a `base.scss` file within your `base` folder).

3. Import everything to your main application folder. When you're all finished, it should look something like this:
  ```scss
  @import "/bower_components/dashing/sass/vendor/normalize";
  @import "/bower_components/dashing/sass/base/base";
  @import "theme/theme";
  @import "/bower_components/dashing/sass/modules/modules";

  @import "base/base";
  @import "layout/layout";
  @import "modules/modules";
  @import "state/state";
  ```

  > Note: By including a theme file, your modules will now look to that for color theming, rather than base.

## Working with CSS

If you choose to work with the css alone, just include a link to the `dashing.css` stylesheet in your `index.html` file.

```html
<link rel="stylesheet" href="/bower_components/dashing/dashing.css">
```

## Setting up your HTML file and importing styles

In order to render your styles correctly on mobile devices, include this meta viewport tag in your `index.html` file. This will allow your content to respond correct to the device width.

```html
<meta name="viewport" content="width=device-width, initial-scale=1">
```

Now that you have your stylesheets in place, go ahead and import your main application stylesheet into your `index.html` file.

```html
<link rel="stylesheet" href="styles/application.css">
```

> Note: The file you're importing will be a custom file you've created. The path and name my be different for you.

*****
*****

# Development

### Clone the repository with git

```bash
git clone https://github.com/dashframework/dashing.git
```

### Releasing a new version

1. Build the Sass and compress the CSS
  ```bash
  sass --watch dashing.scss:dashing.css --style compressed
  ```

2. Check the previously tagged versions
  ```bash
  git tag
  ```

3. Update the version number in the `bower.json` file (See [here](http://semver.org/) for versioning conventions)

4. Update the Dashing Version number found on line 4 of the README.md

5. Commit the changes made in the previous steps
  ```bash
  git commit -m "[message]"
  ```

6. Tag the commit with the appropriate version number
  ```bash
  git tag vX.Y.Z
  ```

7. Push your committed changes
  ```bash
  git push
  ```

8. Push your new tag
  ```bash
  git push --tags
  ```
