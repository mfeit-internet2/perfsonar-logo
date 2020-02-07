# perfSONAR Logo

## Building the Logos

All of the logos are produced from `perfsonar-path.svg` and
`perfsonar-powered-path.svg`.

Run `make` to produce the following variants of both:

 * White text and crosshair lines
 * Black text and crosshair lines, crosshairs with transparent center
 * White text and crosshair lines, crosshairs with transparent center

To produce black and white logos with and without a transparent center
for the crosshairs and with and without the "powered" add-on, run
`make`.  That's all there is to it.


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

The font used is DejaVu Sans:  https://dejavu-fonts.github.io

