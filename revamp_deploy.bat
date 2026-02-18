@echo off
cd /d "%~dp0"
echo ==========================================
echo Deploying Weather App Revamp
echo ==========================================

echo 1. Adding all new files...
git add .

echo 2. Committing V2.0 Revamp...
git commit -m "Revamp: V2.0 Redesign with Open-Meteo API and Glassmorphism UI"

echo 3. Pushing to master...
git push origin master

echo.
echo [SUCCESS] New version deployed!
