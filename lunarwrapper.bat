@echo off
set scriptpath=%~dp0
set lunarpath=%userprofile%/.lunarclient
cd %scriptpath%

:: -----------------------------------------------------------------------------------------------------------------------
:: Edit settings here. Edit past "=" and ensure you use quotes if the path has a space in it.
:: -----------------------------------------------------------------------------------------------------------------------

set javapath="%lunarpath%\jre\4dcd188552ce8876d5e55e1f6d22505109bfa4cb\zulu17.34.19-ca-jre17.0.3-win_x64\bin\java.exe"
set gameDir=%appdata%\.minecraft
set version=1.8.9
set module=lunar
set jvmargs=

:: -----------------------------------------------------------------------------------------------------------------------
::If you are editing settings, this is as much as you can configure. Beyond this is the logic for the code.
:: -----------------------------------------------------------------------------------------------------------------------

title Lunar Launcher Wrapper	

:intro
cls
echo lunarwrapper.bat 1.0.1
echo.
echo.
echo 	Lunar Launcher Wrapper
echo 	Author: Zani
echo 	Batch Simplifier
echo 	Author: Tryfle
echo.
goto choices

:choices
set input1=
echo 	What would you like to do?
echo 	-- 1. Launch Lunar
echo 	-- 2. Edit Settings
echo 	-- 3. Setup Launcher Wrapper
echo 	-- 4. Exit
echo.
set /p "input1= Select an option: "
if "%input1%"=="1" goto open
if "%input1%"=="2" goto config
if "%input1%"=="3" goto getwrapper
if "%input1%"=="4" exit
echo That was not a valid option."
timeout /t 2
cls
goto intro

:callheader
cls
echo lunarwrapper.bat 1.0.1
echo.
echo.
echo 	Lunar Launcher Wrapper
echo 	Author: Zani
echo 	Batch Simplifier
echo 	Author: Tryfle
echo.
goto :eof

:getwrapper
cls
call :callheader
echo 	Attempting to download Lunar Launcher Wrapper...
curl -L -o LunarLaunchWrapper-1.0.0-all.jar "https://cdn.discordapp.com/attachments/1159986745807470602/1159990442335678475/LunarLaunchWrapper-1.0.0-all.jar?ex=65330849&is=65209349&hm=c0e1ce65f4ab8563f8e45f0f277eacc1654df667a8767d3c0921e356bedcf319&"
echo 	Downloaded LunarLauncherWrapper 1.0.0 to the folder this file is located inside.
timeout /t 2
cls
goto intro

:info
cls
call :callheader
echo 	Configuration from llwconfig.txt contains:
echo 	gameDir=%gameDir%
echo 	javapath=%javapath%
echo 	version=%version%
echo 	module=%module%
goto :eof

:config
cls
call :info
timeout /t 2
set configinput=
echo 	Would you like to edit these settings?
echo 	-- 1. Yes
echo 	-- 2. No
set /p configinput="Input: "
if "%configinput%"=="1" goto conf
if "%configinput%"=="2" goto intro
echo That's not a valid input.
timeout /t 2
goto intro

:conf
notepad.exe lunarwrapper.bat
echo Edit your settings, edit them past the "=" and make sure to save your changes.
pause
goto intro

:open
cd %scriptpath%
%javapath% --add-opens java.base/java.lang=ALL-UNNAMED %jvmargs% -cp LunarLaunchWrapper-1.0.0-all.jar wtf.zani.launchwrapper.LunarLaunchWrapperKt --module %module% --version %version% --gameDir %gameDir%
pause
