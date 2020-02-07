# perfSONAR Logo

This is a version of the perfSONAR logo rendered as Scalable Vector
Graphics (SVG) instead of the bitmaps that have been floating around
for many years.

The "O" symbol has been carefully reconstructed from one of the bitmaps
and should be fairly faithful to Jason Zurawski's original.

The font has been changed to the open-source
[DejaVu Sans](https://dejavu-fonts.github.io).  The original appears
to have been done with Adobe [Myriad Pro](https://fonts.adobe.com/fonts/myriad),
which is proprietary.


## Building the Logos

All of the logos are produced from `perfsonar-path.svg` and
`perfsonar-powered-path.svg`.

Run `make` to produce the following variants of both:

 * White text and crosshair lines
 * Black text and crosshair lines, crosshairs with transparent center
 * White text and crosshair lines, crosshairs with transparent center


## Editing Notes


This version of the logo was created in Inkscape, and edits should be
done there as well.  The files contain Inkscape-specific XML but
should still work fine with anything that wants to render it.


**IMPORTANT:** When editing, edit `perfsonar.svg` and
`perfsonar-powered.svg`.  Those files still have the original text.
Then convert the text parts of each to a path and re-save as
`perfsonar-path.svg` and `perfsonar-powered-path.svg`.  The Makefile
will fail if it detects that the non-path version(s) haven't been
created.
