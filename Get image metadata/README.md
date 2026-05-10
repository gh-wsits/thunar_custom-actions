This custom action displays the metadata of a selected image file with a right-click on one of the selected files in thunar and choosing "Get image metadata".

### Screenshot

![Screenshot](/Get%20image%20metadata/Screenshots/GetImageMetadata.png)

### Installation

Installing does *not* require `root` access.



### Dependencies

It uses zenity to display the graphical dialog and identify from ImageMagic to fetch the metadata. So make sure the zenity and ImageMagic packages are installed.

### Configuring the custom action

The actual command is

`identify -verbose %f | zenity --text-info --title="Image related information for %n" --width=1500 --height=1000`

Open thunar and select "Edit" | "Configure custom actions...".

Configure the custom action like shown in the following screenshots:

![GetImageMetadata_action](/Get%20image%20metadata/Screenshots/GetImageMetadata_action.png)
![GetImageMetadata_conditions](/Get%20image%20metadata/Screenshots/GetImageMetadata_conditions.png)

