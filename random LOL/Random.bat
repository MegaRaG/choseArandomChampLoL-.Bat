@echo off

echo Choisis le random 
echo Pour tous les champions saisis "tous" ou par role saisis "assassin", "combattant", "mage", "tireur", "tank" ou "support":
set /p mode=

IF /i "%mode%"=="tous" goto modetous
IF /i "%mode%"=="assassin" GOTO modeassassin
IF /i "%mode%"=="combattant" GOTO modecombattant
IF /i "%mode%"=="mage" GOTO modemage
IF /i "%mode%"=="tireur" GOTO modetireur
IF /i "%mode%"=="tank" GOTO modetank
IF /i "%mode%"=="support" GOTO modesupport
IF /i "%mode%"=="personalisé" GOTO modepersonalise

echo Saisie un mode!(tous, assassin, combattant, mage, tireur, tank).
goto pauusee


:modetous
set /a rand=%random% %% 158
for /f "tokens=1* delims=:" %%i in ('findstr /n .* "..\Random LOL\Fichiers\Champions.txt"') do (
if "%%i"=="%rand%" echo     %%j
)
goto pauusee

:modeassassin
set /a rand=%random% %% 21
for /f "tokens=1* delims=:" %%i in ('findstr /n .* "..\Random LOL\Fichiers\assassins.txt"') do (
if "%%i"=="%rand%" echo     %%j
)
goto pauusee

:modecombattant
set /a rand=%random% %% 39
for /f "tokens=1* delims=:" %%i in ('findstr /n .* "..\Random LOL\Fichiers\combattant.txt"') do (
if "%%i"=="%rand%" echo     %%j
)
goto pauusee

:modemage
set /a rand=%random% %% 33
for /f "tokens=1* delims=:" %%i in ('findstr /n .* "..\Random LOL\Fichiers\mage.txt"') do (
if "%%i"=="%rand%" echo     %%j
)
goto pauusee

:modetireur
set /a rand=%random% %% 26
for /f "tokens=1* delims=:" %%i in ('findstr /n .* "..\Random LOL\Fichiers\tireur.txt"') do (
if "%%i"=="%rand%" echo     %%j
)
goto pauusee

:modetank
set /a rand=%random% %% 21
for /f "tokens=1* delims=:" %%i in ('findstr /n .* "..\Random LOL\Fichiers\tank.txt"') do (
if "%%i"=="%rand%" echo     %%j
)
goto pauusee

:modesupport
set /a rand=%random% %% 23
for /f "tokens=1* delims=:" %%i in ('findstr /n .* "..\Random LOL\Fichiers\support.txt"') do (
if "%%i"=="%rand%" echo     %%j
)
goto pauusee


:modepersonalise
set /a rand=%random% %% 158
for /f "tokens=1* delims=:" %%i in ('findstr /n .* "..\Random LOL\Fichiers\personalise.txt"') do (
if "%%i"=="%rand%" echo     %%j
)
goto pauusee

:pauusee
pause 