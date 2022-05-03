@echo off
title LKINN
batbox /h 0

:ini
cls
batbox /g 22 3 /d "K     K  KK  K  K   K  K   K"
batbox /g 22 4 /d "K     K KK   K  KK  K  KK  K"
batbox /g 22 5 /d "K     KK     K  K K K  K K K"
batbox /g 22 6 /d "K     K KK   K  K  KK  K  KK"
batbox /g 22 7 /d "KKKK  K  KK  K  K   K  K   K"

call box 17 10 "                                   " # Sbox
batbox /g 19 11

set/p "asd="

call box 21 13 "Lista" 31 13 "Lista+" 42 13 "Arquivo" # Botoes
ginp /m %Botoes% /h 70
cls
if %errorlevel%==1 goto flist
if %errorlevel%==2 goto flistplus
if %errorlevel%==3 goto ffile

goto ini

:flist
if %asd%=="" goto ini
cls
batbox /g 0 4
echo Resultados para "%asd%"
batbox /g 0 6
findstr /i "%asd%" list
batbox /g 42 0 /d "K     K  KK  K  K   K  K   K"
batbox /g 42 1 /d "K     K KK   K  KK  K  KK  K"
batbox /g 42 2 /d "K     KK     K  K K K  K K K"
batbox /g 42 3 /d "K     K KK   K  K  KK  K  KK"
batbox /g 42 4 /d "KKKK  K  KK  K  K   K  K   K"
call box 1 0 "                                   " # Sbox
batbox /g 3 1
set/p "asd="
if %asd% neq "" goto flist
goto ini


:ffile
if %asd%=="" goto ini
batbox /g 0 3
echo Pesquisando em "%asd%"
batbox /g 42 0 /d "K     K  KK  K  K   K  K   K"
batbox /g 42 1 /d "K     K KK   K  KK  K  KK  K"
batbox /g 42 2 /d "K     KK     K  K K K  K K K"
batbox /g 42 3 /d "K     K KK   K  K  KK  K  KK"
batbox /g 42 4 /d "KKKK  K  KK  K  K   K  K   K"
call box 1 0 "                                   " # Sbox
batbox /g 3 1
set/p "asdf="
if %asdf%=="" goto ini
cls
batbox /g 0 5
findstr /i "%asdf%" "%asd%"
if %errorlevel% gtr 0 batbox /g 0 5 /d "Nao existe '%asdf%' em '%asd%'"
goto ffile

:flistplus
if %asd%=="" goto ini
cls
batbox /g 0 5
if not exist %asd% echo Nada encontrado sobre "%asd%"
if exist %asd% echo Resultados para "%asd%"
batbox /g 0 7
if exist %asd% type %asd%
batbox /g 42 0 /d "K     K  KK  K  K   K  K   K"
batbox /g 42 1 /d "K     K KK   K  KK  K  KK  K"
batbox /g 42 2 /d "K     KK     K  K K K  K K K"
batbox /g 42 3 /d "K     K KK   K  K  KK  K  KK"
batbox /g 42 4 /d "KKKK  K  KK  K  K   K  K   K"
call box 1 0 "                                   " # Sbox
batbox /g 3 1
set/p "asd="
if %asd% neq "" goto flistplus
goto ini

