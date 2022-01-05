@echo off
IF EXIST qres.60 (
	Qres.exe /r:120
	ren qres.60 qres.120
	echo Switched refresh rate to 120hz!
	timeout 4 >nul
	exit
	) ELSE (
		Qres.exe/r:60
		ren qres.120 qres.60
		echo Switched refresh rate to 60hz!
		timeout 4 >nul
		exit
	)
