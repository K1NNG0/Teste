set result=
set oapp=0
:calcu
title %~n0
call cnx
cls
cd %listapp%
call laycalc
cd %home%
call Button 20 0 "%date%" # Info
call Button 1 23 "  0  " 1 20 "1" 6 20 "2" 11 20 "3" 1 17 "4" 6 17 "5" 11 17 "6" 1 14 "7" 6 14 "8" 11 14 "9" 10 23 "00" 16 23 "=" 16 20 "+" 16 17 "-" 16 14 "x" 1 11 "C" 6 11 "(" 11 11 ")" 16 11 "/" 1 0 "%web%" 10 27 "" 15 27 "" 20 27 "" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 set result=%result%0
if %errorlevel%==2 set result=%result%1
if %errorlevel%==3 set result=%result%2
if %errorlevel%==4 set result=%result%3
if %errorlevel%==5 set result=%result%4
if %errorlevel%==6 set result=%result%5
if %errorlevel%==7 set result=%result%6
if %errorlevel%==8 set result=%result%7
if %errorlevel%==9 set result=%result%8
if %errorlevel%==10 set result=%result%9
if %errorlevel%==11 set result=%result%00
if %errorlevel%==12 set/a result=%result%
if %errorlevel%==13 set result=%result%+
if %errorlevel%==14 set result=%result%-
if %errorlevel%==15 set result=%result%*
if %errorlevel%==16 set result=
if %errorlevel%==17 set result=%result%(
if %errorlevel%==18 set result=%result%)
if %errorlevel%==19 set result=%result%/
if %errorlevel%==20 call cnx
if %errorlevel%==21 set lapp=0 && goto home
if %errorlevel%==22 set lapp=0 && goto home
if %errorlevel%==23 set lapp=1 && goto sanga
goto calcu
