This custom action refreshes the thumbnails of one ore more selected media files with a right-click on one of the selected files in thunar and choosing "Refresh selected thumbnails".

### Dependencies

This custom action requires no `root`access.

It uses parallel to process many files at the same time, in order to drastically speed up the process. So make sure the `parallel` package is installed.

### Configuring the action

This is the actual command:

`parallel -X touch -m ::: %F`

Open thunar and select "Edit" | "Configure custom actions...".

Configure the custom action like shown in the following screenshots:

![RefreshThumbnails_action](/Refresh%20selected%20thumbnails/Screenshots/RefreshThumbnails_action.png)
![RefreshThumbnails_conditions](/Refresh%20selected%20thumbnails/Screenshots/RefreshThumbnails_conditions.png)
