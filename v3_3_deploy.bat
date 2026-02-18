@echo off
cd /d "%~dp0"
echo ==========================================
echo Deploying V3.3 (Added State Name)
echo ==========================================

echo 1. Adding files...
git add .

echo 2. Committing V3.3...
git commit -m "Feature: V3.3 - Added State Name (admin1) to display"

echo 3. Pushing to master...
git push origin master

echo.
echo [SUCCESS] V3.3 Deployed!
