# Dashing Navigation
View an [example](http://dashframework.github.io/dashing//example/templates/navigation/example.html) of Dashing Navigation in use

As users interact within your App, it is important to provide them with a navigation experience that is consistent with the rest of the Dash platform. By using our standard navigation elements, you will ensure users do not get lost or confused while using your App.

## Auto-color
App menus within Dashing come with an auto-color feature that allow you to simply define a background color for your menu and forget about the rest. Based on your menu color, Dashing will auto-magically determine which text color will be most readable and apply it to your app-context and app-navigation elements.

> To change the background color for your App Menu, just alter the `$menu-color` variable in your theme file.

## App Menu Structure

### App Context
Within `.app-context` should exists everything a user would need to know about your App from first glance, including your app name, details, and intuitive breadcrumb navigation.

### App Navigation
Use the `.app-navigation` class to form interactive list items for easy tabbed navigation.

### App Content
Once your have your app-menu defined, be sure to wrap the main content of your App into a class called `.app-content`. This will ensure the proper padding gets placed on the element to perfectly snap underneath your `app-menu`.

## Navigation Configurations
| Elements               | Effect               | Notes               |
|------------------------|----------------------|---------------------|
| `.app-menu` | Container for your menu and nav elements | *Required* |
| `.app-context` | Top portion of your app menu | *Required*. Includes App Title and breadcrumbing |
| `.app-title` | Title of your App | *Required*. All Apps should display the name of their App. Place this within `.app-context`  |
| `.app-title--has-breadcrumb`| Display a clickable App Title | Use this class when introducing breadcrumb navigation into your App |
| `.app-navigation` | Contains navigation elements | This element should be placed within a `ul` |
| `li` | Defines an action | *Required* |
| `a` | Clickable Nav Link | *Required* Dashing will auto-color the text based on the background color |
| `.app-content` | Applies top padding to the content of your App | *Required*. All content of your app (below your navigation) should be placed with this element |
| `.expanded` | Applies expanded style to `.app-menu` | Apply this class to `.app-menu` to define the size of your app-content |
| `.fixed` | Applies fixed style to `.app-menu` | Use `.fixed` to persist your header to the top of the page |


## Usage

### Condensed App Menu without Navigation

```html
<nav class="app-menu fixed">
  <div class="app-context">
    <div class="app-title">App Title</div>
  </div>
</nav>

<div class="app-content"></div>
```

### Expanded App Menu with Navigation

```html
<nav class="app-menu expanded fixed">
  <div class="app-context">
    <div class="app-title">App Title</div>
  </div>
  <ul class="app-navigation expanded">
    <li><a class="active">Link 1</a></li>
    <li><a>Link 2</a></li>
    <li><a>Link 3</a></li>
  </ul>
</nav>

<div class="app-content"></div>
```

> Note: By default, your `.app-navigation` will scroll horizontally when your browser width gets too small.

### Adding Breadcrumbing

```html
<nav class="app-menu">
  <div class="app-context">
    <div class="app-title">
      <a class="app-title--has-breadcrumb">App Title</a>
      <i class="dashing-icon dashing-icon--arrow-right"></i>
      <span>Level 2</span>
    </div>
  </div>
</nav>
```

### Adding Main Action Button

```html
<nav class="app-menu">
  <div class="app-context">
    <div class="app-title">
      <a class="app-title--has-breadcrumb">App Title</a>
    </div>
  </div>
  <button class="button button--blue button--icon button--icon--main">
    <i class="dashing-icon dashing-icon--add"></i>
  </button>
</nav>
```
