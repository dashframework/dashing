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
## Labels
Using `<label>`
When you have an input that can be visually labeled, simply use the label tag to give context to the input.

```html 
<label for="idOfElement"></label>
<input id="idOfElement">
```
In some cases  `hidden` labels may be necessary, such as when a button describes a form and two labels are not required.

```html
<label for="idOfElement" class="hidden"></label>
<input id="idOfElement">
```

You can also use `aria-labelledby=""` to notify a screen reader which element is acting as a label for the form.

```html
<div id="idOfElement">Label</div>
<input aria-labelledby="idOfElement">
```

`aria-labelledby` also allows one to describe multiple fields or forms with one label. One may use this function on something such as a table header that defines all rows or columns of a table. You can also use `aria-labelledby` to denote multiple fields that might label a form such as the row and column of a table.

```html
<th id="idOfElement1">Label</th>
<th id="idOfElement2">Label</th>
<input aria-labelledby="idOfElement1 idOfElement2">
```
> Note: When it is possible, it is preffered to use the `<label>` element. However, should you put both `<label>` and aria-labelledby, aria-labelledby will be used exclusivley by a screen-reader.

Using `aria-describedby=""` one can allow a form description to be noted. This is not for a label, but rather text that is important to know that may otherwise go with the label. 

```html
<input name="description" id="description" aria-describedby="idOfElement">
 <div id="idOfElement">Please limit your characters to 255 and include no line breaks.</div>
```

You should also use `aria-describedby` to reference tooltips. 
`aria-describedby` will not override labels, but rather be used in addition to them.
Using  `aria-label=""` will directly apply the label text to an element.

```html
<input aria-label="This is a description of this input.">
```
