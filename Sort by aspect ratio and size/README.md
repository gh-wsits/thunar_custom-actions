# Sort by aspect ratio and size

This custom action moves the images of the current folder into subfolders by aspect ratio and size, with a right-click on one of the selected files in thunar and choosing "Sort by aspect ratio and size".

### Screenshots

![Screenshot](/Sort%20by%20aspect%20ratio%20and%20size/Screenshots/StructPicturesBySize.png)

![Screenshot](/Sort%20by%20aspect%20ratio%20and%20size/Screenshots/StructPicturesBySize_result.png)

### Dependencies

The script uses "zenity" to display a graphical dialog box and "identify" from "ImageMagic" to fetch the metadata of the images. It also uses "gawk" to process strings, which I think is not installed by default in all Linux distributions. So make sure the zenity, ImageMagic and gawk packages are installed.

### What it does

The script analyzes each selected image and moves it to the subfolder fitting the aspect ratio and size of the image. It creates the required subfolders on-the-fly.

### Limitations

- I only tested this with PNG and JPEG files but it should work with any image type supported by ImageMagic.

### Installation
Installing does not require root access.

Copy the file `StructPicturesBySize.sh` to `~/.local/bin/` or any other folder, where you store your user commands.

Enter `chmod +x ~/.local/bin/DistributeFiles.sh` in the terminal and press `Enter`.

### Customization

- The name of the subfolders can be changed by modifying `TargetFolder="$SourceFolder/$AspectRatio ($PictureWidth*$PictureHeight)"`.

### Configuring the thunar custom action

![Screenshot](/Sort%20by%20aspect%20ratio%20and%20size/Screenshots/StructPicturesBySize_action.png)

![Screenshot](/Sort%20by%20aspect%20ratio%20and%20size/Screenshots/StructPicturesBySize_condition.png)
