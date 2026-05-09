This custom action converts one ore more selected audio files to MP3 with a right-click on the file in thunar and choosing "Convert selection to .mp3".

**Screenshot**

![Screenshot](/Convert%20selection%20to%20MP3/ConvToMP3.png)

**Installation**

Installing does *not* require `root` access.

- Copy the file `ConvToMP3.sh` to `~/.local/bin/`
- Enter `chmod +x ~/.local/bin/ConvToMP3.sh` in the terminal and press `Enter`

**Dependencies**

It uses zenity to display dialogs and gstreamer to convert the audio file. So make sure the zenity and gstreamer packages are installed.

**Configuring the custom action**

![Screenshot](/Convert%20selection%20to%20MP3/ConvToMP3_action.png)
![Screenshot](/Convert%20selection%20to%20MP3/ConvToMP3_conditions.png)
