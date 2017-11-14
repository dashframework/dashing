# Typography
View an [example](http://dashframework.github.io/dashing//example/templates/typography/example.html) of Dashing Typography.

## System Typeface
Source Sans Pro was Adobe's first open source typeface family, created by Paul D. Hunt in 2012. Designed primarily for user interface, it draws from the clarity and legibility of twentieth-century American gothic typefaces (News Gothic and Franklin Gothic). Utilizing this typeface throughout your App is key to a successful interface on any device or screen.

### Type Structure
Keeping a well structured typographic scale is extremely important for legibility and hierarchy in your type. While following a certain scale will never replace the eye of a designer, it is considered responsible design to showcase rationale behind your design choices. Our typographic structure is loosely based on a [major third scale (1:1.25 ratio)](http://alistapart.com/article/more-meaningful-typography), providing a comfortable range between the `h1` and `small` elements.

| Variable             | Element    | Pixel  | REM       |
|----------------------|------------|--------|-----------|
| `$font-size-xlarge`  | `<h1>`     | 35px   | 1.953rem  |
| `$font-size-large`   | `<h2>`     | 28px   | 1.563rem  |
| `$font-size-medium`  | `<h3>`     | 23px   | 1.2rem    |
| `$font-size-normal`  | `<p>`      | 18px   | 1rem      |
| `$font-size-small`   | `<small>`  | 16px   | 0.9rem    |
| `$font-size-xsmall`  | `<xsmall>` | 14px   | 0.8rem    |

For increased scannability, we recommend only using regular and semibold weights (400 & 600 respectively); adding additional weights can clutter your content. Keep in mind that achieving visual hierarchy should not be limited by font weight alone. Rather, it is recommended that you use a combination of weight, size and color variations in order to create proper hierarchy.

> **Tip:** Using the &lt;strong&gt; tag
For small phrases that require extra attention, try using the &lt;strong&gt; tag, which has been formatted to display a heavier weight.

In order to create a better reading experience, having a slightly larger body font size of 18px (1rem) allows users to quickly and easily scan your content. For small areas of text such as captions, copyrights and labels, it is advised to use the `<small>` element or the `$small` Sass variable (14px). When presenting content in paragraphs, the `<p>` element or the `$font-size-normal` Sass variable (18px) should be used.

> **Caution:** Minimum font size
In an effort to focus on the legibility of your type, font size should never be displayed below 0.8rem, (14px). Always keep your users in mind when deciding on a final font size.
