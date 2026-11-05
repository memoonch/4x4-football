@echo off
cd /d "%~dp0"
python start-game.py
if errorlevel 1 (
 echo Python 3 is required for local testing. On a website, open the hosted index.html URL instead.
 pause
)
