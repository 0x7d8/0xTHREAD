@echo off
title TM THREAD 3
echo [i] THREAD 3 - RUNNING
echo [!] DO NOT TOUCH
set /A runs=0
set /A heads=0
set /A tails=0
:loop
if %1 EQU %runs% (
	goto :finish
) else (
	set /A rnd=%RANDOM% * 2 / 32768 + 1
	if %rnd% EQU 1 (set /A heads=%heads% + 1)
	if %rnd% EQU 2 (set /A tails=%tails% + 1)
	set /A runs=%runs% + 1
	echo set result=%runs% > T3R.CMD
	goto :loop
)
:finish
del /q T3R.CMD
echo set resheads=%heads%>>T3R.CMD
echo set restails=%tails%>>T3R.CMD
echo 1 > T3D.TMP
