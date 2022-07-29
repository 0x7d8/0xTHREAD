@echo off
title THREAD MANAGER V1.0.0
echo [i] THIS SOFTWARE IS MANAGING THREADS
echo [!] DO NOT TOUCH IF PROGRAM IS RUNNING
set /A share=%1
set /A share=%share% / 8

start /min THREAD-1.CMD %share%
start /min THREAD-2.CMD %share%
start /min THREAD-3.CMD %share%
start /min THREAD-4.CMD %share%
start /min THREAD-5.CMD %share%
start /min THREAD-6.CMD %share%
start /min THREAD-7.CMD %share%
start /min THREAD-8.CMD %share%

:LOOP
if exist T8D.TMP (
	goto :FINISH
) else (
	goto :LOOP
)

:FINISH
echo 1 > TMD.TMP
