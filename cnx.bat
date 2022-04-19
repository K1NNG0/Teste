set conn=on
ping -n 1 8.8.8.8 | find "TTL=" >nul
if errorlevel 1 set conn=off
if %conn%==on set web= CN
if %conn%==off set web= DC
cd %home%