# Distribute files in subfolder

This script distributes files from a source folder containing thousands of files into subfolders with 1.000 files each.

### Limitations

- The script works flawlessly, but actually this is not yet a thunar custom action, because I did not yet manage to make it work by starting it from thunar.
- I did not yet find out if there is a maximum of files the script can handle. I testet it with more than 50.000 files (approx. 150GB) in the source folder and that worked perfectly. The script created 49 subfolders with 1.000 files each. Then it moved the remaining files (less than 1.000) to the 50th folder. And the whole operation took only a few seconds on my SSD.

### Installation

Installing does *not* require root access.

Copy the file `DistributeFiles.sh` to `~/.local/bin/` or any other folder, where you store your user commands.

Enter `chmod +x ~/.local/bin/DistributeFiles.sh` in the terminal and press `Enter`

### Usage

Since this is not yet a thunar custom action, you need to open a terminal and navigate to the folder containing the files that should be distributed in subfolders. From there, you just type `~/.local/bin/DistributeFiles.sh` and press `Enter`.

### What it does

The script checks how many files are in the source folder. Then it calculates the number of subfolders required, creates the first folder and moves the first 1.000 files to that folder. Then it proceeds the same way for all remaining files, until the source folder has no more files.

The name of a subfolder is the name of the source folder with an appended undescore and a number, starting with 1. So if the name of the source folder is "images", it creates the subfolders "images_1", images_2", ...

It will dynamically add the number of leading zeros required to have the same count of digits for all subfolders, so if it calculates that it will create more than 9 folders, it will start with subfolder "images_01" and if it needs to create more than 99 subfolders, it will start with "images_001", ...

 Since the script *moves* the files, there is no limitation regarding the minimum remaining disk space.

### Customization

- Changing the count of files per subfolder can be done by changing the value in `FilesPerFolder=1000`
