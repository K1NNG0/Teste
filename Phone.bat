@echo off
@mode 35,30
title %~n0
cd djombas
call ini
cls
Batbox /h 0

:home
title %~n0
set oapp=0
set pg=home
set pg0=home
call applist
call cnx
cls
call lay
call Button 20 0 "%date%" # Info
call Button 1 4 "%app1%" 13 4 "%app2%" 25 4 "%app3%" 1 7 "%app4%" 13 7 "%app5%" 25 7 "%app6%" 1 10 "%app7%" 13 10 "%app8%" 25 10 "%app9%" 1 0 "%web%" 10 27 "" 15 27 "" 20 27 "" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 set oapp=1 && goto app
if %errorlevel%==2 set oapp=2 && goto app
if %errorlevel%==3 set oapp=3 && goto app
if %errorlevel%==4 set oapp=4 && goto app
if %errorlevel%==5 set oapp=5 && goto app
if %errorlevel%==6 set oapp=6 && goto app
if %errorlevel%==7 set oapp=7 && goto app
if %errorlevel%==8 set oapp=8 && goto app
if %errorlevel%==9 set oapp=9 && goto app
if %errorlevel%==10 call cnx
if %errorlevel%==11 goto home
if %errorlevel%==12 goto home
if %errorlevel%==13 goto lapps
goto home

:lne
set pg=%pg0%
set pg0=lne
call cnx
cls
call lay
call Button 7 4 "Erro Desconhecido" 20 0 "%date%" # Info
call Button 1 0 "%web%" 10 27 "" 15 27 "" 20 27 "" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 call cnx
if %errorlevel%==2 goto %pg%
if %errorlevel%==3 goto home
if %errorlevel%==4 goto lapps
goto lne

:lapps
set pg=%pg0%
set pg0=home
call cnx
cls
call lay
call Button 9 4 "Itens Recentes" 20 0 "%date%" # Info
call Button 1 7 "%histapp1%" 13 7 "%histapp2%" 25 7 "%histapp3%" 21 23 "App Store" 1 0 "%web%" 10 27 "" 15 27 "" 20 27 "" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto histapp
if %errorlevel%==2 goto histapp
if %errorlevel%==3 goto histapp
if %errorlevel%==4 goto store0
if %errorlevel%==5 call cnx
if %errorlevel%==6 goto %pg%
if %errorlevel%==7 goto home
if %errorlevel%==8 goto home
goto lapps

:store0
if not exist C:\Windows\System32\wget.exe goto store0error
cls
cd %listapp%
if exist Store.bat set oapp=9 && goto app
wget -O Store.bat https://raw.githubusercontent.com/K1NNG0/Teste/main/Store.bat
wget -O cnwg.bat https://raw.githubusercontent.com/K1NNG0/Teste/main/cnwg.bat
wget -O laystore.bat https://raw.githubusercontent.com/K1NNG0/Teste/main/laystore.bat
echo Store>app.ap9
cd %home%
wget -O cnwg.bat https://raw.githubusercontent.com/K1NNG0/Teste/main/cnwg.bat
goto home

:store0error
set pg=%pg0%
set pg0=store0error
call cnx
cls
call lay
call Button 1 4 "%cod503%" 1 7 "wget %cod404%" 1 10 "%cod426%" 20 0 "%date%" # Info
call Button 1 0 "%web%" 10 27 "" 15 27 "" 20 27 "" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 call cnx
if %errorlevel%==2 goto %pg%
if %errorlevel%==3 goto home
if %errorlevel%==4 goto lapps
goto store0error

::checar historico de apps antes de mandar pro ":histapp"
:histapp
call cnx
cls
call lay
call Button 6 4 "Nenhum item recente" 20 0 "%date%" # Info
call Button 1 0 "%web%" 10 27 "" 15 27 "" 20 27 "" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 call cnx
if %errorlevel%==2 goto lapps
if %errorlevel%==3 goto home
if %errorlevel%==4 goto home
goto histapp

::teste de apps
:apptest
cls
call Store
if %lapp%==1 set lapp=0 && goto lapps
if %lapp%==0 goto home
goto home

:app
cls
cd %listapp%
if %oapp%==1 call %app1%
if %oapp%==2 call %app2%
if %oapp%==3 call %app3%
if %oapp%==4 call %app4%
if %oapp%==5 call %app5%
if %oapp%==6 call %app6%
if %oapp%==7 call %app7%
if %oapp%==8 call %app8%
if %oapp%==9 call %app9%
if %lapp%==1 set lapp=0 && goto lapps
cd %home%
if %lapp%==0 goto home
goto home
