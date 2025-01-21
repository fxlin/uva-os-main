@echo off

if %errorlevel% equ 0 (
	echo [32m    EVERYTHING SEEMS FINE. window to close in 3 seconds...      [0m
	ping -n 3 127.0.0.1 > nul
) else (
	echo [31m    SOMETHING SEEMS WRONG ...      [0m
	pause
)