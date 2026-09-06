@echo off

:: Prepare
chcp 65001 >nul
title ink-fun.github.io │ :)
powershell -Command "(New-Object -ComObject WScript.Shell).SendKeys([char]173)" >nul
color 0b

:: Variables
set frogies="denisonisd.org"
set games="ink-fun.github.io/games"

:: Menu
:menu
echo  . . ..            .  .BW;:r8XX7   …    .  :.               .     :::
echo          .. .     .  MBr; 25i.:7B2    ..   :                     .::r
echo r7777777            B2 . 7:  :...WZ        :.                ..   :.2
echo 72:77r: B          Wu:; ...:::: : 22 .  .  :     .  .            .;.7 .  1. games downloader
echo       .rM          B7i .::.:.  :   :   .   ..                     i.7
echo .   : :;B       7BWZ: 7;r.:. .:  .W  .. . ..     2XW87   .        : 2    2. ethernet abuse
echo    :  ::B       MB:WB:;Z:.:::.  ;2.   ..   .:  2B;  .2MW:   .     r 2
echo 7::. .:;M         2 :M  .i: : .   :     . . : :7  :7   2MB   .    i.7    3. jailbreak site
echo a M0  ::M           M7 i:2:.     Z.         0;;  :       7B7      ;.7
echo r Mr  7iB       .Z XM i: 7      X.  .      .777. 2        .M.     :.7.   4. coming soon
echo 7 M2  irW    .  B 7: .     Z.;.;:         a. 2  :i         B      ; 7:
echo 7 B7  :7M      Br....  . 2M   .           .0:   :. .;27   WM      ;.;;   5. exit
echo 7 B7  r;B    MW: :.: . ..;:r  :.          77 . .  ::..    B       ;.7: .
echo i Mr  ;;B   BX  :     . .:  X:.:         .M      .   .   M        ::::
echo i W7  riB  B 22   .    .  i ;W .           ...  ..: .  SB   . .   :.i:
echo i B7  ;;M M:7.  ;7...        SZ             . X.:      ;7a   .    :.;r
echo : Br  ::B Ba  .7              .M  .     .   . M        i. :W      ..::
echo r Mr  7:B  M ::i:.             72          . B   .:.        MX    :::r
echo : Mr  7:M  :M  S             .. Z:  .        i7 .i:        . aB    .:r
echo 2:M: .:.B  .B 7.            r2rr ;           B i:           : 7B   :.r
echo 2rMS  :.7B  M 7.             ::.:      ..   B  2               8B   .
echo XBr 7Mi M 7B.a                ..:2       .  B :               WWBSia   .
echo     a  ;M W  :                  72         .B ;                ;:B2Z.r
echo.
set ch=0
set/p ch="-> "
if %ch%==1 goto 1
if %ch%==2 goto 2
if %ch%==3 goto 3
if %ch%==4 goto 4
if %ch%==5 goto 5
cls
goto menu

:1
cls
start https://%games%/
goto menu

:2
cls
echo which ip does router have
echo 1. 192.168.0.1
echo 2. 192.168.1.1
echo 3. exit
choice /c 123
if %errorlevel%==1 (set ip=0)
if %errorlevel%==2 (set ip=1)
if %errorlevel%==3 (cls
goto menu)
echo ok, 192.168.%ip%.1
pause
start http://192.168.%ip%.1/
echo try these login and password:
echo admin;admin
timeout /t 60
goto menu

:3
cls
echo loading actual site frogies site: %frogies%
start https://%frogies%
timeout /t 3 /nobreak 2>nul
goto menu

:4
cls
echo son...
pause
cls
goto menu

:5
powershell -Command "(New-Object -ComObject WScript.Shell).SendKeys([char]173)"
exit
