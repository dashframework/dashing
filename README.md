# Dashing
Stylish framework for web apps

[![GitHub version](https://badge.fury.io/gh/dashframework%2Fdashing.svg)](https://badge.fury.io/gh/dashframework%2Fdashing)
[![Bower version](https://badge.fury.io/bo/dashing.svg)](https://badge.fury.io/bo/dashing)
[![npm version](https://badge.fury.io/js/dashing-framework.svg)](https://badge.fury.io/js/dashing-framework)

## Browser Support

| Chrome | Edge | Firefox | Opera | IE | Safari |
|--------|------|---------|-------|----|--------|
| Latest | Latest | Latest | Latest | IE 11+ | Safari 8+ |


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
  > Note: You will be asked to create a title, description, and other information about the file. You can simply just hit `enter` to skip through a lot of these, or fill them out if you wish. The last three questions will be yes/no, just respond `y` to all of them.

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


## Setting up your HTML file and importing styles

We've provided a starter HTML file to help you get running. Paste this code into your `index.html` file.

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- These previous two meta tags *must* come first in the head -->
    <title>Dashing Template</title>

    <!-- Working with CSS – Use this link if prefer to use the vanilla css, without any customization -->
    <link rel="stylesheet" href="/bower_components/dashing/dashing.css">

    <!-- Working with SCSS – Use this if you'd like to add any customization to the dashing modules. Note: The path and file name may differ for your project. -->
    <link rel="stylesheet" href="styles/application.css">
  </head>
  <body>
    <h1>Hello, world!</h1>
  </body>
</html>
```

## What's Included
Every module contains an example file that allows you to preview the look and feel of each feature.

##### [Base Styles](https://github.com/dashframework/dashing/tree/develop/sass/base)

* Color · [Documentation](https://github.com/dashframework/dashing/tree/develop/sass/base/colors) · [Example](http://dashframework.github.io/dashing/example/templates/color/example.html)
* Extendables · [Documentation](https://github.com/dashframework/dashing/tree/develop/sass/base/extendables)
* Mixins · [Documentation](https://github.com/dashframework/dashing/tree/develop/sass/base/mixins)
* Utilities · [Documentation](https://github.com/dashframework/dashing/tree/develop/sass/base/utilities)
* Variables · [Documentation](https://github.com/dashframework/dashing/tree/develop/sass/base/variables)

##### [Modules](https://github.com/dashframework/dashing/tree/develop/sass/modules)

* Actions · [Documentation](https://github.com/dashframework/dashing/tree/develop/sass/modules/actions) · [Example](http://dashframework.github.io/dashing/example/templates/actions/example.html)
* Card · [Documentation](https://github.com/dashframework/dashing/tree/develop/sass/modules/card) · [Example](http://dashframework.github.io/dashing/example/templates/card/example.html)
* Forms · [Documentation](https://github.com/dashframework/dashing/tree/develop/sass/modules/forms) · [Example](http://dashframework.github.io/dashing/example/templates/forms/example.html)
* Grid · [Documentation](https://github.com/dashframework/dashing/tree/develop/sass/modules/grid) · [Example](http://dashframework.github.io/dashing/example/templates/grid/example.html)
* Icons · [Documentation](https://github.com/dashframework/dashing/tree/develop/sass/modules/icons) · [Example](http://dashframework.github.io/dashing/example/templates/icons/example.html)
* Navigation · [Documentation](https://github.com/dashframework/dashing/tree/develop/sass/modules/navigation) · [Example](http://dashframework.github.io/dashing/example/templates/navigation/example.html)
* Footer · [Example](http://dashframework.github.io/dashing/example/templates/footer/fixed-footer.html)
* Tables · [Documentation](https://github.com/dashframework/dashing/tree/develop/sass/modules/table) · [Example](http://dashframework.github.io/dashing/example/templates/table/default.html)
* Typography · [Documentation](https://github.com/dashframework/dashing/tree/develop/sass/modules/typography) · [Example](http://dashframework.github.io/dashing/example/templates/typography/example.html)
* Spinner · [Example](http://dashframework.github.io/dashing/example/templates/spinner/example.html)

*****
*****

## Development

### Clone the repository with git

```bash
git clone https://github.com/dashframework/dashing.git
```

```bash
bower install
```

```bash
npm install
```

### Running the project

```bash
./dashutilitiy.sh
```

```bash
npm run webpack
```

### Releasing a new version

1. Build the Sass and compress the CSS
  ```bash
  sass --watch dashing.scss:dashing.css --style compressed
  ```

  ```bash
  sass -w example/sass/example.scss:example/css/example.css
  ```

2. Update the version number in the `bower.json` and `package.json` files (See [here](http://semver.org/) for versioning conventions)

3. Stage the changes to be committed
  ```bash
  git add .
  ```

4. Commit the changes made in the previous steps
  ```bash
  git commit -m "[message]"
  ```

5. Tag the commit with the appropriate version number
  ```bash
  git tag vX.Y.Z
  ```

6. Push your committed changes
  ```bash
  git push
  ```

7. Push your new tag
  ```bash
  git push --tags
  ```

8. Push your new npm package
  ```bash
  npm publish
  ```

## Found a Bug?

[Submit an issue](https://github.com/dashframework/dashing/issues) if you need help, or [submit a pull request](https://github.com/dashframework/dashing/pulls) with your own fixes or changes.

## Contributors

Dashing is a product of Samaritan Ministries International.

Thanks to the following people who have contributed to this project:

- [@jrauh](https://github.com/jrauh)
- [@bjrobertson](https://github.com/bjrobertson)
- [@coryclubb](https://github.com/coryclubb)
- [@nevren](https://github.com/Nevren)

## License

[MIT License](LICENSE.md)
