@echo off
title TM THREAD 1
echo [i] THREAD 1 - RUNNING
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
	echo set result=%runs% > T1R.CMD
	goto :loop
)
:finish
del /q T1R.CMD
echo set resheads=%heads%>>T1R.CMD
echo set restails=%tails%>>T1R.CMD
echo 1 > T1D.TMP
