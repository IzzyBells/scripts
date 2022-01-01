@echo off
IF EXIST game.dll.mod (
	ren game.dll game.dll.vanilla
	ren game.dll.mod game.dll
	echo Switched to modded game.dll!
	timeout 2 >nul
	exit 
	) ELSE ( 
	ren game.dll game.dll.mod
	ren game.dll.vanilla game.dll
	echo Switched to vanilla game.dll!
	timeout 2 >nul
	exit
	)
