# perfSONAR Logo

![perfSONAR Logo](perfsonar-powered-path.svg)

This is a version of the perfSONAR logo rendered as Scalable Vector
Graphics (SVG) instead of the bitmaps that have been floating around
for many years.

The crosshair symbol has been carefully reconstructed from one of the
bitmaps and should be fairly faithful to Jason Zurawski's original.

The font has been changed to the open-source
[DejaVu Sans](https://dejavu-fonts.github.io).  The original appears
to have been done with Adobe [Myriad Pro](https://fonts.adobe.com/fonts/myriad),
which is proprietary.



## Prerequisites

Building the logo requires a system with the following available at
the command line:

 * ImageMagick
 * Inkscape
 * Make
 * Tar
 * Xsltproc
 * Zip

On Red Hat, `yum -y install ImageMagick inkscape make tar libxslt zip` will
install everything needed.


## Building the Logo

Run `make` 


## Modifying the Logo

The original, complete version of the logo is `original.svg`.

It was created in Inkscape, and edits should be done there as well.
The files contain Inkscape-specific XML but should still work fine
with anything that wants to render it.

Because there's no easy, practical way to automatically derive
versions of the logo with proper bounding boxes and margins and text
converted to paths, the repository includes files where this has been
done.

**If the logo is changed, follow this procedure to update the files:**

 * Start Inkscape
 * Open `original.svg`
 * Select all text objects
 * Convert them to paths (`Shift` + `Ctrl` + `C`)
    * **DO NOT SAVE `original.svg` after this point.
 * Make all layers visible
 * Open _Document Properties_ (`Shift` + `Ctrl` + `D`)
 * Expand _Resize page to content...`
 * Make sure all four margins are set to `15.0`.
 * Click _Resize page to drawing or selection_.
 * Save as `parts.svg`.
 * Make the `powered` layer invisible.
 * Click _Resize page to drawing or selection_ in _Document Properties_.
 * Save as `parts-text.svg`.
 * Make the `text` layer invisible.
 * Click _Resize page to drawing or selection_ in _Document Properties_.
 * Save as `parts-icon.svg`.
