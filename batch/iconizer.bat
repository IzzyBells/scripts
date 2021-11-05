@echo off

set "icondir=%~1"

::Create icons subdirectory
if not exist "%icondir%\icons\nul" md "%icondir%\icons"

:: Read all the images from the source directory, then resize them and save as a 256x256 ico in new icons subdirectory using ImageMagick
for %%f in ("%icondir%"\*.png) do ( magick convert "%%f" -resize 256x256 "%icondir%"\icons\%%~nf.ico )
for %%f in ("%icondir%"\*.jpg) do ( magick convert "%%f" -resize 256x256 "%icondir%"\icons\%%~nf.ico )
