set oapp=0
if not exist "%home%\chat" md "%home%\chat"
set chatapp=%home%\chat
:chat
title %~n0
call cnx
cls
cd %listapp%
call inimsg
call laymsg
cd %home%
call Button 20 0 "%date%" # Info
call Button 1 4 "Conversas" 14 4 "Status" 19 23 "Iniciar Chat" 1 0 "%web%" 10 27 "" 15 27 "" 20 27 "" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto chat
if %errorlevel%==2 goto chat
if %errorlevel%==3 goto newchat
if %errorlevel%==4 call cnx
if %errorlevel%==5 set lapp=0 && goto home
if %errorlevel%==6 set lapp=0 && goto home
if %errorlevel%==7 set lapp=1 && goto sanga
goto chat

:newchat
cls
cd %listapp%
call laymsg
cd %chatapp%
if exist msgcont.cn1 set/p msgcont1=<msgcont.cn1
if exist msgcont.cn2 set/p msgcont2=<msgcont.cn2
if exist msgcont.cn3 set/p msgcont3=<msgcont.cn3
if exist msgcont.cn4 set/p msgcont4=<msgcont.cn4
if exist msgcont.cn5 set/p msgcont5=<msgcont.cn5
if exist msgcont.cn6 set/p msgcont6=<msgcont.cn6
cd %home%
call Button 1 4 "Iniciar Chat" 20 0 "%date%" # Info
call Button 1 8 "%msgcont1%" 1 11 "%msgcont2%" 1 14 "%msgcont3%" 1 17 "%msgcont4%" 1 20 "%msgcont5%" 1 23 "%msgcont6%" 1 0 "%web%" 10 27 "" 15 27 "" 20 27 "" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto newchat
if %errorlevel%==2 goto newchat
if %errorlevel%==3 goto newchat
if %errorlevel%==4 goto newchat
if %errorlevel%==5 goto newchat
if %errorlevel%==6 goto newchat
if %errorlevel%==7 call cnx
if %errorlevel%==8 set lapp=0 && goto chat
if %errorlevel%==9 set lapp=0 && goto home
if %errorlevel%==10 set lapp=1 && goto sanga
goto newchat
