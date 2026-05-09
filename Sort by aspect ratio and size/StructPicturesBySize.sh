#!/bin/sh

if zenity --question --title "Create picture folder structure" --text "Should the selected files get sorted in folders structured by aspect ratio and resolution?" ; then

    # Progress values
    PictureCount=$#
    CurrentIndex=0
    
    (
	# Iterate through all selected pictures
	for CurrentPicture in "$@" ; do

	    ((CurrentIndex++))

	    gawk "BEGIN {print 100 / $PictureCount * $CurrentIndex;}"
	    echo "# Processing file $CurrentIndex of $PictureCount ..."
	    
	    SourceFolder=$(dirname "$CurrentPicture")
	    PictureWidth=`identify -format '%w' $CurrentPicture`
	    PictureHeight=`identify -format '%h' $CurrentPicture`
	    AspectRatio=$(gawk "BEGIN {OFMT=\"%.4f\"; print $PictureWidth / $PictureHeight;}")
	    AspectRatio=${AspectRatio/./,}
	    PictureWidth=$(printf "%.4d" $PictureWidth)
	    PictureHeight=$(printf "%.4d" $PictureHeight)
	    TargetFolder="$SourceFolder/$AspectRatio ($PictureWidth*$PictureHeight)"
	    [ ! -d "$TargetFolder" ] && mkdir "$TargetFolder"

	    mv $CurrentPicture "$TargetFolder"
	done
    ) | zenity --progress --title="Creating picture folder structure" --text="Creating folders and moving files …" --percentage=0 --auto-close
	
fi
