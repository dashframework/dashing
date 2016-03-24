# Dashing Navigation
View an [example](http://dashframework.github.io/dashing/sass/modules/navigation/example/example-1.html) of Dashing Navigation in use

As users interact within your App, it is important to provide them with a navigation experience that is consistent with the rest of the Dash platform. By using our standard navigation elements, you will ensure users do not get lost or confused while using your App.

## Auto-color
App menus within Dashing come with an auto-color feature that allow you to simply define a background color for your menu and forget about the rest. Based on your menu color, Dashing will auto-magically determine which text color will be most readable and apply it to your app-context and app-navigation elements.

> To change the background color for your App Menu, just alter the `$menu-color` variable in your app stylesheet.

## App Menu Structure

### App Context
Within `.app-context` should exists everything a user would need to know about your App from first glance, including your app name, details, and intuitive breadcrumb navigation.

### App Navigation
Use the `.app-navigation` class to form interactive list items for easy tabbed navigation.

### App Content
Once your have your app-menu defined, be sure to wrap the main content of your App into a class called `.app-content`. This will ensure the proper padding gets placed on the element to perfectly snap underneath your `app-menu`.

##### Configurations
| Elements             | Effect                  | Notes                                               |
|----------------------|-------------------------|-----------------------------------------------------|
| `li`                 | Defines an action       | *Required*                                          |
| `a`                  | Clickable Nav Link      | *Required* Dashing will auto-color the text based on the background color  |
