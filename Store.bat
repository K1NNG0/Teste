set oapp=0
:store
title %~n0
call cnx
cls
cd %listapp%
call laystore
call cnwg
cd %home%
call Button 1 4 "%wg%" 11 4 "App Store" 20 0 "%date%" # Info
call Button 1 8 " Mensagens " 1 11 " Musicas " 1 14 " Carteira " 1 17 " Calculadora " 1 0 "%web%" 10 27 "" 15 27 "" 20 27 "" # Press
Getinput /m %Press% /h 70
if %conn%==off goto noconn
if %errorlevel%==1 goto dlmsg
if %errorlevel%==2 goto store
if %errorlevel%==3 goto dlwallet
if %errorlevel%==4 goto dlcalcu
if %errorlevel%==5 call cnx
if %errorlevel%==6 set lapp=0 && goto home
if %errorlevel%==7 set lapp=0 && goto home
if %errorlevel%==8 set lapp=1 && goto sanga
goto store

:noconn
cls
echo sem conexao com a internet tente novamente mais tarde
echo.
pause
cd %home%
goto store

:nomem
cls
echo sem memoria suficiente
echo.
pause
cd %home%
goto store

:rins
cls
echo Aplicativo ja foi instalado
echo.
pause
cd %home%
goto store

:dlstore
cd %listapp%
if exist Store.bat goto rins
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
wget -O Store.bat https://raw.githubusercontent.com/K1NNG0/Teste/main/Store.bat
wget -O cnwg.bat https://raw.githubusercontent.com/K1NNG0/Teste/main/cnwg.bat
echo Store>app.ap%slot%
cd %home%
wget -O cnwg.bat https://raw.githubusercontent.com/K1NNG0/Teste/main/cnwg.bat
goto store

:dlcalcu
cd %listapp%
if exist Calc.bat goto rins
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
wget -O Calc.bat https://raw.githubusercontent.com/K1NNG0/Teste/main/Calcu.bat
wget -O laycalc.bat https://raw.githubusercontent.com/K1NNG0/Teste/main/laycalc.bat 
echo Calc>app.ap%slot%
cd %home%
goto store

:dlmsg
cd %listapp%
if exist msg.bat goto rins
if not exist app.ap1 set slot=1 && goto insmsg
if not exist app.ap2 set slot=2 && goto insmsg
if not exist app.ap3 set slot=3 && goto insmsg
if not exist app.ap4 set slot=4 && goto insmsg
if not exist app.ap5 set slot=5 && goto insmsg
if not exist app.ap6 set slot=6 && goto insmsg
if not exist app.ap7 set slot=7 && goto insmsg
if not exist app.ap8 set slot=8 && goto insmsg
if not exist app.ap9 set slot=9 && goto insmsg
cd %home%
goto nomem

:insmsg
cls
cd %listapp%
wget -O msg.bat https://raw.githubusercontent.com/K1NNG0/Teste/main/msg.bat
wget -O laymsg.bat https://raw.githubusercontent.com/K1NNG0/Teste/main/laymsg.bat
wget -O inimsg.bat https://raw.githubusercontent.com/K1NNG0/Teste/main/inimsg.bat
echo  MSG>app.ap%slot%
cd %home%
goto store


:dlwallet
cd %listapp%
if exist wlt.bat goto rins
if not exist app.ap1 set slot=1 && goto inswallet
if not exist app.ap2 set slot=2 && goto inswallet
if not exist app.ap3 set slot=3 && goto inswallet
if not exist app.ap4 set slot=4 && goto inswallet
if not exist app.ap5 set slot=5 && goto inswallet
if not exist app.ap6 set slot=6 && goto inswallet
if not exist app.ap7 set slot=7 && goto inswallet
if not exist app.ap8 set slot=8 && goto inswallet
if not exist app.ap9 set slot=9 && goto inswallet
cd %home%
goto nomem

:inswallet
cls
cd %listapp%
wget -O wlt.bat https://raw.githubusercontent.com/K1NNG0/Teste/main/wlt.bat
wget -O laywallet.bat https://raw.githubusercontent.com/K1NNG0/Teste/main/laywallet.bat
echo  WLT>app.ap%slot%
cd %home%
goto store