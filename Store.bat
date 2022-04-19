set oapp=0
:store
title %~n0
call cnwg
call cnx
cls
call laystore
call Button 1 4 "%wg%" 11 4 "App Store" 20 0 "%date%" # Info
call Button 1 8 " Atualizar Store " 1 11 " Calculadora " 1 14 " Email " 1 0 "%web%" 10 27 "" 15 27 "" 20 27 "" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto store
if %errorlevel%==2 goto dlcalcu
if %errorlevel%==3 goto store
if %errorlevel%==4 call cnx
if %errorlevel%==5 set lapp=0 && goto home
if %errorlevel%==6 set lapp=0 && goto home
if %errorlevel%==7 set lapp=1 && goto sanga
goto store

:nomem
cls
echo sem memoria suficiente
pause
cd %home%
goto store

:rins
cls
echo Aplicativo ja foi instalado
pause
cd %home%
goto store

:dlstore
cd %listapp%
::if exist Calcu.bat goto rins
if not exist app.ap1 set slot=1 && goto inststore
if not exist app.ap2 set slot=2 && goto inststore
if not exist app.ap3 set slot=3 && goto inststore
if not exist app.ap4 set slot=4 && goto inststore
if not exist app.ap5 set slot=5 && goto inststore
if not exist app.ap6 set slot=6 && goto inststore
if not exist app.ap7 set slot=7 && goto inststore
if not exist app.ap8 set slot=8 && goto inststore
if not exist app.ap9 set slot=9 && goto inststore
cd %home%
goto nomem

:inststore
cls
cd %listapp%
wget -O Store.bat 
echo Store>app.ap%slot%
cd %home%
wget -O cnwg.bat 
goto store

:dlcalcu
cd %listapp%
::if exist Calcu.bat goto rins
if not exist app.ap1 set slot=1 && goto instcalcu
if not exist app.ap2 set slot=2 && goto instcalcu
if not exist app.ap3 set slot=3 && goto instcalcu
if not exist app.ap4 set slot=4 && goto instcalcu
if not exist app.ap5 set slot=5 && goto instcalcu
if not exist app.ap6 set slot=6 && goto instcalcu
if not exist app.ap7 set slot=7 && goto instcalcu
if not exist app.ap8 set slot=8 && goto instcalcu
if not exist app.ap9 set slot=9 && goto instcalcu
cd %home%
goto nomem

:instcalcu
cls
cd %listapp%
wget -O Calcu.bat https://raw.githubusercontent.com/K1NNG0/Teste/main/Calcu.bat
wget -O laycalc.bat https://raw.githubusercontent.com/K1NNG0/Teste/main/laycalc.bat 
echo Calc>app.ap%slot%
cd %home%
goto store
