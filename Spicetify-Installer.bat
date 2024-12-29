@echo off

set ESC=
set RED=%ESC%[31m
set PURPLE=%ESC%[35m
set GREEN=%ESC%[32m
set YELLOW=%ESC%[33m
set WHITE=%ESC%[37m 

echo.
echo.
title Spicetify Installer Loading.    - by Parzival3274
echo %GREEN% Loading Spicetify Installer%WHITE%.   %GREEN%Please Wait
echo %YELLOW% ---------------------------------------
echo %WHITE%                                 =   0% ]
echo %YELLOW% ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
title Spicetify Installer Loading..   - by Parzival3274  
echo %GREEN% Loading Spicetify Installer%WHITE%..  %GREEN%Please Wait
echo %YELLOW% ---------------------------------------
echo %WHITE% [][][][][][][]                 =   45% ]
echo %YELLOW% ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
title Spicetify Installer Loading...  - by Parzival3274 
echo %GREEN% Loading Spicetify Installer%WHITE%... %GREEN%Please Wait 
echo %YELLOW% ---------------------------------------
echo %WHITE% [][][][][][][][][][][][]        =  80% ]
echo %YELLOW% ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
title Spicetify Installer Loading Complete - by Parzival3274 
echo %GREEN%             Complete%WHITE%! 
echo %YELLOW% ---------------------------------------
echo %WHITE% [][][][][][][][][][][][][][][] =  100% ]
echo %YELLOW% ---------------------------------------
ping localhost -n 2 >nul
echo.
echo.
echo.
echo.

:Ask
title Spicetify Installer waiting for input - by Parzival3274 
echo %PURPLE% Is Spotify installed from the offical Spotify website%WHITE%? %PURPLE%(%WHITE%Y%PURPLE%/%WHITE%N%PURPLE%) %WHITE% 
set INPUT=
set /P INPUT=Type input: %=%
If /I “%INPUT%”==“y” goto yes
If /I “%INPUT%”==“n” goto no
If /I “%INPUT%”==“Y” goto yes
If /I “%INPUT%”==“N” goto no
If /I “%INPUT%”==“yes” goto yes
If /I “%INPUT%”==“no” goto no
If /I “%INPUT%”==“Yes” goto yes
If /I “%INPUT%”==“No” goto no

:yes
title Spicetify Installer - by Parzival3274 
echo.
echo %GREEN% Ok%WHITE%! %GREEN%Let's install Spicetify now%WHITE%! 
echo.
echo.
timeout 2 >nul
echo.
echo.
goto Start

:no
title Spicetify Installer - by Parzival3274 
echo.
echo %RED% Ok%WHITE%! %RED%Please install Spotify from the offical Spotify website and then run this installer again%WHITE%!  
echo.
echo %PURPLE% Want to open the offical Spotify download website%WHITE%? %PURPLE%(%WHITE%Y%PURPLE%/%WHITE%N%PURPLE%) %WHITE% 
echo.
set INPUT=
set /P INPUT=Type input: %=%
If /I “%INPUT%”==“y” goto Download
If /I “%INPUT%”==“n” goto ExitDownload
If /I “%INPUT%”==“Y” goto Download
If /I “%INPUT%”==“N” goto ExitDownload
If /I “%INPUT%”==“yes” goto Download
If /I “%INPUT%”==“no” goto ExitDownload
If /I “%INPUT%”==“Yes” goto Download
If /I “%INPUT%”==“No” goto ExitDownload
echo.
echo.
pause >nul
exit

:Download
title Spicetify Installer - by Parzival3274 
echo.
echo.
start https://www.spotify.com/de-en/download/other/
echo.
echo.
echo %WHITE%Install Spotify from the offical website and then run this installer again.
echo  Press any key to exit the installer!
echo.
echo.
pause >nul
exit

:ExitDownload
title Spicetify Installer - by Parzival3274 
echo.
echo.
echo %WHITE% Okay. Press any key to exit the installer!
pause >nul
exit

:Start
title Spicetify Installer - by Parzival3274 
echo.
echo %GREEN% Installing Spicetify now%WHITE%!
echo.
echo.
echo.
echo %WHITE%
powershell.exe -ExecutionPolicy Bypass -NoProfile -File command.ps1
echo.
echo.
echo.
echo.
echo.
echo.
timeout 2 >nul
title Spicetify Installer Finished - by Parzival3274 
echo %YELLOW%Installation Finished%WHITE%! %YELLOW%Enjoy Spicetify%WHITE%!
echo.
echo.
echo.
echo.
echo.
echo.
echo %WHITE%Press any key to exit the installer! ;)
pause >nul
exit