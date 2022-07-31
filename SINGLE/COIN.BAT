@echo off
title [1T] MASS COIN FLIPPER
if exist 1.cmd del /q 1.cmd
if exist 2.cmd del /q 2.cmd
echo.
echo [i] TRIES
set /p "trie=[:] "
echo.
set /A tries=1
set /A head=0
set /A tail=0
set /A ctrie=%trie% + 1
:loop
if %tries% EQU %ctrie% (goto finish)
set /A rnd=%RANDOM% * 2 / 32768 + 1
if %rnd% EQU 1 (
set /A head=%head% + 1
echo [i] [%tries% / %trie%] [%rnd%] [HEAD]
)
if %rnd% EQU 2 (
set /A tail=%tail% + 1
echo [i] [%tries% / %trie%] [%rnd%] [TAIL]
)
set /A tries=%tries% + 1
goto :loop
:finish
echo.
echo [i] CALCULATING
Powershell -ExecutionPolicy Bypass -Command "& '%cd%\CALC.PS1' '%head%' '%tail%' '%trie%'
call 1.cmd
call 2.cmd
echo.
echo [i] FINISHED
echo.
echo [i] HEADS
echo [P] %hperc%
echo.
echo [A] %head%
echo.
echo.
echo [i] TAILS
echo [P] %tperc%
echo.
echo [A] %tail%
echo.
echo.
echo [i] PRESS ANY KEY TO EXIT
pause>nul
