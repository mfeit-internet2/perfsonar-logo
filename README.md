# perfSONAR Logo

![perfSONAR Logo](parts.svg)

This is a version of the perfSONAR logo rendered as Scalable Vector
Graphics (SVG) instead of the bitmaps that have been floating around
for many years.  In February, 2020, the team elected to switch to a
newer version with a differnt font that is bolder, better matches the
style of the crosshairs and will work better in some media such as
embroidery.

The font has been changed the open-source [Rabbid Highway Sign II](https://fontlibrary.org/en/font/rabbid-highway-sign-ii),
which better matches the style of the "O".  The original appears to have
been done with Adobe [Myriad Pro](https://fonts.adobe.com/fonts/myriad),
which is proprietary.  A copy of the new font is included in this respository.

To install this font:

 * [On Linux](https://www.linux.com/tutorials/how-manage-fonts-linux/)
 * [On Mac OS X](https://support.apple.com/en-us/HT201749)
 * [On Windows](https://support.microsoft.com/en-us/help/314960/how-to-install-or-remove-a-font-in-windows)


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
 * Quit Inkscape
