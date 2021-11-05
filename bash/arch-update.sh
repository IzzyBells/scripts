if yay -Pw | grep ^ > /dev/null 2>&1 ; then yay -Pw; else reflekt && yay -Syu; fi
