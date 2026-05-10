# Convert selection to JPEG

This custom action converts one ore more selected image files to JPEG with a right-click on one of the selected files in thunar and choosing "Convert selection to .JPEG".

### Dependencies

This custom action requires no `root`access.

It uses "parallel" to perform many conversions at the same time, in order to drastically speed up the process. For the actual conversion it uses "mogrify", which is part of "ImageMagic". So make sure the parallel and ImageMagic packages are installed.

### Limitations
- I currently only tested this with .png files, but it should work with all files supported by ImageMagic.
- Trying to convert more than about 500 files in one shot will produce an error. This seems to be a limitation of the command line buffer.

### Configuring the action

This is the actual command:

`parallel mogrify -format jpg -quality 90 ::: %F`

Open thunar and select "Edit" | "Configure custom actions...".

Configure the custom action like shown in the following screenshots:

![ConvToJPEG_action](/Convert%20selection%20to%20JPEG/Screenshots/ConvToJPEG_action.png)

![ConvToJPEG_conditions](/Convert%20selection%20to%20JPEG/Screenshots/ConvToJPEG_conditions.png)
