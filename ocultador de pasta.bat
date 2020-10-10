echo off
chcp 65001
color 4d
title Ocultador De Pasta
mode 40,5
set /a tr=0
echo Usuario: The kill
:falsa
set /p senh="->"
if %senh% neq a ( if %tr% gtr 4 (exit)  
set /a tr=tr+1
echo Numero de tentativas %tr%
goto falsa
)
mode 45,18
color A
echo =============================================
echo              Ocultador de pasta             
echo ============================================= 
echo ---------------------------------------------
echo    Selecione o local que deseje ocultar a 
echo                 pasta/arquivo
echo ---------------------------------------------     
echo [1] - Desktop
echo [2] - Documentos
echo [3] - Musicas
echo [4] - Imagens
echo [5] - Videos
echo [6] - Download
echo [7] - Outros 
echo ---------------------------------------------   
set /p sele="-> "
if %sele% equ 1 (cd c:\
cd c:\Users\%username%\desktop) else if %sele% equ 2 (cd c:\
cd c:\Users\%username%\documents) else if %sele% equ 3 (cd c:\
cd c:\Users\%username%\music) else if %sele% equ 4 (cd c:\ 
cd c:\Users\%username%\pictures) else if %sele% equ 5 (cd c:\
cd c:\Users\%username%\videos) else if %sele% equ 6 (cd c:\
cd c:\Users\%username%\downloads) else if %sele% equ 7 (cd c:\
goto manual
)
goto pre
exit

:pre
cls
mode 70,50
echo ======================================================================
echo                           Ocultador de pasta             
echo ====================================================================== 
echo ----------------------------------------------------------------------
dir
echo.
echo ----------------------------------------------------------------------
echo.
echo Digite o nome de um dos arquivos acima para ocultar
echo.
:ret
set /p liut="->"
if exist %liut% (attrib +h +s %liut%
msg * Pasta ocultada com sucesso) else (echo Pasta ou arquivo invalido
echo ----------------------------------------------------------------------
goto ret
)
exit


:Manual
cls
echo =============================================
echo              Ocultador de pasta
echo =============================================
echo ---------------------------------------------
echo Digite o caminho onde esta a pasta/arquivo
set /p caminho="-> "
cd %caminho%
mode 70,50
dir
echo.
echo ----------------------------------------------------------------------
echo.
echo Digite o nome de um dos arquivos acima para ocultar
echo.
:retur
set /p pa="->"
if exist %pa% (attrib +h +s %pa%
msg * Pasta ocultada com sucesso) else (echo Pasta ou arquivo invalido
echo ----------------------------------------------------------------------
goto retur
)
pause

