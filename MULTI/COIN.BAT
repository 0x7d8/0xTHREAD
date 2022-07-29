@echo off
title [8T] MASS COIN FLIPPER
if exist 1.cmd (del /q 1.cmd)
if exist 2.cmd (del /q 2.cmd)

if exist TMD.TMP (del /q TMD.TMP)
echo.
echo [i] TRIES [X4]
set /p "trie=[:] "
echo.
set /A tries=1
set /A head=0
set /A tail=0
start /min THREAD-MANAGER.CMD %trie%
:loop
if exist TMD.TMP (
	del /q TMD.TMP
	goto :finish
) else (
	if exist T1R.CMD (
		call T1R.CMD
		set /A tries=%tries% + %result%
		set /A dis=%tries% / 11
		echo [i] [%dis%/%trie%] [PROCESSING]
		del /q T1R.CMD
	)
	if exist T2R.CMD (
		call T2R.CMD
		set /A tries=%tries% + %result%
		set /A dis=%tries% / 11
		echo [i] [%dis%/%trie%] [PROCESSING]
		del /q T2R.CMD
	)
	if exist T3R.CMD (
		call T3R.CMD
		set /A tries=%tries% + %result%
		set /A dis=%tries% / 11
		echo [i] [%dis%/%trie%] [PROCESSING]
		del /q T3R.CMD
	)
	if exist T4R.CMD (
		call T4R.CMD
		set /A tries=%tries% + %result%
		set /A dis=%tries% / 11
		echo [i] [%dis%/%trie%] [PROCESSING]
		del /q T4R.CMD
	)
	if exist T5R.CMD (
		call T5R.CMD
		set /A tries=%tries% + %result%
		set /A dis=%tries% / 11
		echo [i] [%dis%/%trie%] [PROCESSING]
		del /q T5R.CMD
	)
	if exist T6R.CMD (
		call T6R.CMD
		set /A tries=%tries% + %result%
		set /A dis=%tries% / 11
		echo [i] [%dis%/%trie%] [PROCESSING]
		del /q T6R.CMD
	)
	if exist T7R.CMD (
		call T7R.CMD
		set /A tries=%tries% + %result%
		set /A dis=%tries% / 11
		echo [i] [%dis%/%trie%] [PROCESSING]
		del /q T7R.CMD
	)
	if exist T8R.CMD (
		call T8R.CMD
		set /A tries=%tries% + %result%
		set /A dis=%tries% / 11
		echo [i] [%dis%/%trie%] [PROCESSING]
		del /q T8R.CMD
	)
	goto :loop
)
:finish

call T1R.CMD
set /A head = %head% + %resheads%
set /A tail = %tail% + %restails%
del /q T1R.CMD
call T2R.CMD
set /A head = %head% + %resheads%
set /A tail = %tail% + %restails%
del /q T2R.CMD
call T3R.CMD
set /A head = %head% + %resheads%
set /A tail = %tail% + %restails%
del /q T3R.CMD
call T4R.CMD
set /A head = %head% + %resheads%
set /A tail = %tail% + %restails%
del /q T4R.CMD
call T5R.CMD
set /A head = %head% + %resheads%
set /A tail = %tail% + %restails%
del /q T5R.CMD
call T6R.CMD
set /A head = %head% + %resheads%
set /A tail = %tail% + %restails%
del /q T6R.CMD
call T7R.CMD
set /A head = %head% + %resheads%
set /A tail = %tail% + %restails%
del /q T7R.CMD
call T8R.CMD
set /A head = %head% + %resheads%
set /A tail = %tail% + %restails%
del /q T8R.CMD

del /q T1D.TMP
del /q T2D.TMP
del /q T3D.TMP
del /q T4D.TMP
del /q T5D.TMP
del /q T6D.TMP
del /q T7D.TMP
del /q T8D.TMP

if exist TMD.TMP (del /q TMD.TMP)

echo.
echo [i] CALCULATING
Powershell -ExecutionPolicy Bypass -Command "& 'Z:\home\robert\Schreibtisch\DATEIEN\PROGRAMMIERT\02 BATCH\MASS COIN FLIP\MULTI\CALC.PS1' '%head%' '%tail%' '%trie%'
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
