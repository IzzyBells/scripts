# My scripts
A collection of small scripts I've made for practical purposes. This is all stuff I didn't feel justified a full repository, and I just sort of cobbled them together when I needed them, so they aren't perfect by any means. They just either fix problems I have or make tedious tasks more convenient.
# Batch (Windows)
## iconizer.bat
Prerequisite:
- [ImageMagick for Windows](https://imagemagick.org/script/download.php#windows)

Converts a folder full of .jpgs and .pngs to 256x256 .ico files (the largest resolution the .ico format will allow). Run from command prompt like so in the folder you place it in:
`iconizer.bat imagefolder`, make sure that all images in the folder and the folder name don't have spaces in them and it should work fine. Edit of another script I made, [emoji2badge](https://github.com/IzzyBells/emoji2badge)

## new-shimeji-ee-launcher.bat
Prerequisites: 
- A [Shimeji-ee](https://kilkakon.com/shimeji/) desktop pet that isn't launching correctly, or that launches fine but never spawns
- 64-bit [Java](https://www.java.com/en/download/manual.jsp)

This was the only way I could get a Shimeji-ee "desktop buddy" program that was updated from a 32-bit version to a 64-bit version to work. It could help if Shimeji-ee.jar isn't opening properly or if it opens fine but no Shimeji ever appears. 

First, if the Shimeji you downloaded is older than August 2017 or it specifies 32-bit Java as a requirement, update it by following the video FAQ by KonFlux Games here: https://youtu.be/A1y9C1Vbn6Q?t=658.
Then, if launching the .jar doesn't make it work correctly, or it breaks the pre-existing launcher script/executable in the Shimeji-ee folder you were given, try putting this script into the Shimeji folder and launching it. It should just work.

## swapper.bat
Prerequisites:
- A file, and an alternative version of that file you'd like to swap it out with from time to time.

swapper.bat is a simple renaming script that allows you to swap one version of a file (for example, a vanilla game file `game.dll`), with another version of that file (for example, a modified game file `game.dll.mod`) by just running the script, instead of going into the folder each time you want to switch the file out and having to move or rename anything by hand. Replace `game.dll` with whatever file you actually want to be swapping, and `game.dll.mod` with the alternative version of that file. Have both files in the same folder as the script and run it to toggle between the two different versions. You can create a shortcut to this script to run it easily. 

An example use case for this is to switch between fullscreen and windowed mode for specific game that doesn't support windowed mode as an option, but lets you force it by hex editing a game file. By swapping out the file names in the script, placing this script in the game folder alongside the original game file and the hex edited one, and putting a shortcut to this script right next to the game's shortcut on your desktop, you can toggle between the fullscreen and windowed versions of the game with just a double-click on the script's icon.

The lines beginning with `echo` display a message in a Command Prompt window that pops up for two seconds to let you know which version of the file is currently being used. You can change these messages to indicate whatever you like, or comment them out / remove them entirely for the script to not open a window at all. You can also swap the `2` in the script out for however many seconds you would like the message to be displayed.

## toggle-refresh-rate.bat
Prerequisites:
- [QRes by AK Software](https://www.majorgeeks.com/files/details/qres.html)
- qres.60 or qres.120 (empty files) in same folder as script and QRes, depending on your current refresh rate

This script lets you toggle your refresh rate between 60hz and 120hz by just running it. I need to switch between these pretty often due to compatibility issues with certain programs and games, so it's handy to just click on a desktop shortcut in 2 seconds instead of having to go through Windows settings for a whole minute. 

# PowerShell (Windows)
## disable-usb-powermanagement.ps1

Disables USB power management option for all USB devices in Device Manager automatically. Must have administrator privileges on your Windows account to use. This useful for enthusiast controllers that use a lot of power or that don't play nice with USB power management (such as gamo2 ASCs for rhythm games), which Windows sometimes likes to turn on unexpectedly.

# Bash (Linux, Arch)
## update-arch.sh
Prerequisites: 
- [Reflekt by Kwest Ambani](https://gitlab.com/kwestro/kaven/blob/master/bin/reflekt) in path
- [yay](https://github.com/Jguer/yay)

Checks to see if there is news about any updates, displays them and stops if there are. Then, automatically update mirrorlist to use the fastest mirrors. Finally, updates all programs through yay, both regular Arch packages and AUR packages
