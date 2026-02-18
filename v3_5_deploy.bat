@echo off
cd /d "%~dp0"
echo ==========================================
echo Deploying V3.5 (Actually Removed Insights)
echo ==========================================

echo 1. Adding files...
git add .

echo 2. Committing V3.5...
git commit -m "Fix: V3.5 - Removed City Insights HTML block"

echo 3. Pushing to master...
git push origin master

echo.
echo [SUCCESS] V3.5 Deployed!
