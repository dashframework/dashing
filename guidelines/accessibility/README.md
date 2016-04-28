# Accessibility
Accessibility guidelines for the dashing framework

## Alt Attribute for Images
Alt tags are primarily used on images to provide a text-based equivalent to the function that the image provides. While some things can remain `alt=" "`, such as bullets and decorative items that ultimately serve no functional purpose, other images (that might be used in navigation) may require something to the effect of `alt="About Us"`. Try to keep alt tags descriptive of their content. Leave out text such as "Link to", "Button to", or "An image of", because a screen reader will describe to the user that it is an image or if it is linked. 

>Note: If a browser fails to load an image, the alt text is visually displayed instead.

### Usage 
If the image serves as a decorative element such as a bullet or seperation, the `alt` attribute can be left blank. This prevents the user from being told by the screen reader everytime a bullet appears on the screen. If the image otherwise serves no purpose in understanding and using the site, an alt tag can be left blank.

```html 
<img src="image/decorative.jpg" alt=" ">
```

If the image is not accompanied by a label to describe it, the alt tag will need supporting text to describe the image. (Without using words as "Link to" or "Click this image", etc.)

```html
<a href="dashingframework.io">
  <img src="image/dashing-logo.jpg" alt="Dashing Framework">
</a>
```
>Note: If the image is a logo, don't include words such as "Logo" in the alt text.

If the image is accompanied by a label, the alt attribute can remain blank. 

```html
<a href="dashingframework.io">
  <img src="image/dashing-logo.jpg" alt=" ">
  <label>Dashing Framework</label>
</a>
```