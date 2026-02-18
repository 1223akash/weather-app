@echo off
cd /d "%~dp0"
echo ==========================================
echo Deploying Weather App V3.0 (Pro Dashboard)
echo ==========================================

echo 1. Adding files...
git add .

echo 2. Committing V3.0...
git commit -m "Upgrade: V3.0 Pro Dashboard with 5-day forecast and detailed metrics"

echo 3. Pushing to master...
git push origin master

echo.
echo [SUCCESS] V3.0 Deployed!
