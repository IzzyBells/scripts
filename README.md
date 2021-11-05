# My scripts
A collection of small scripts I've made for practical purposes. This is all stuff I didn't feel justified a full repository, and I just sort of cobbled them together when I needed them, so they aren't perfect by any means.
# Batch (Windows)
## iconizer.bat
Prerequisite:
- [ImageMagick for Windows](https://imagemagick.org/script/download.php#windows)

Converts a folder full of .jpgs and .pngs to 256x256 .ico files (the largest resolution the .ico format will allow). Run from command prompt like so in the folder you place it in:
`iconizer.bat imagefolder`, make sure that all images in the folder and the folder name don't have spaces in them and it should work fine. Edit of another script I made, [emoji2badge](https://github.com/IzzyBells/emoji2badge)

## new-shimeji-ee-launcher.bat
Prerequisites: 
- A [Shimeji-ee](https://kilkakon.com/shimeji/) desktop pet that isn't launching correctly or showing up
- 64-bit [Java](https://www.java.com/en/download/manual.jsp)

This was the only way I could get a Shimeji-ee "desktop buddy" program that was updated from a 32-bit version to a 64-bit version to work. It could help if Shimeji-ee.jar isn't opening properly or if it opens fine but no Shimeji ever appears. 

First, if the Shimeji you downloaded is older than August 2017 or it specifies 32-bit Java as a requirement, update it by following the video FAQ by KonFlux Games here: https://youtu.be/A1y9C1Vbn6Q?t=658.
Then, if launching the .jar doesn't make it work correctly, or it breaks the pre-existing launcher script/executable in the Shimeji-ee folder you were given, try putting this script into the Shimeji folder and launching it. It should just work.

# PowerShell (Windows)
## disable-usb-powermanagement.ps1

Disables USB power management option for all USB devices in Device Manager automatically. Must have administrator privileges on your Windows account to use. This useful for enthusiast controllers that use a lot of power or that don't play nice with USB power management (such as gamo2 ASCs for rhythm games), which Windows sometimes likes to turn on unexpectedly.

# Bash (Linux, Arch)
## update-arch.sh
Prerequisites: 
- [Reflekt by Kwest Ambani](https://gitlab.com/kwestro/kaven/blob/master/bin/reflekt) in path
- [yay](https://github.com/Jguer/yay)

Checks to see if there is news about any updates, displays them and stops if there are. Then, automatically update mirrorlist to use the fastest mirrors. Finally, updates all programs through yay, both regular Arch packages and AUR packages
