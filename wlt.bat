set oapp=0
cls
wget -O temp1.txt https://dolarhoje.com/
title Dolar Hoje
find "cotMoeda nacional" temp1.txt>temp2.txt
del temp1.txt
for /f "tokens=1-30 delims=/<aMbcdefghijklmnopqrstuvwxyz>;,'& " %%a in (temp2.txt) do (
set r=%%y
set c=%%z
)
set real=%r%,%c%
echo set real%real%>temp.bat
del temp2.txt
call temp.bat
echo %real%
del temp.bat
for /f "tokens=1-2 delims= " %%a in ("%real%") do (
set rs=%%~a
set cs=%%~b
)
set/a rs=%rs%+0
set/a cs=%cs%+0
set real=%rs%,%cs%
set rval=%rs%%cs%
cls
echo USD$ 1,00
echo BRL$ %real%

:wallet
title %~n0
call cnx
cls
cd %listapp%
call laywallet
cd %home%
call Button 20 0 "%date%" # Info
call Button 9 4 "Valor do dolar" # Info
batbox /g 1 9 /c 0x0a /d "USD$" /g 6 9 /c 0x07 /d "1,00"
batbox /g 1 10 /c 0x0a /d "BRL$ " /g 6 10 /c 0x07 /d "%real%"
call Button 1 0 "%web%" 10 27 "" 15 27 "" 20 27 "" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 call cnx
if %errorlevel%==2 set lapp=0 && goto home
if %errorlevel%==3 set lapp=0 && goto home
if %errorlevel%==4 set lapp=1 && goto sanga
goto wallet