@echo off
cd /d "%~dp0"
echo ==========================================
echo Deploying V3.4 (Removed City Insights)
echo ==========================================

echo 1. Adding files...
git add .

echo 2. Committing V3.4...
git commit -m "Polish: V3.4 - Removed City Insights section as requested"

echo 3. Pushing to master...
git push origin master

echo.
echo [SUCCESS] V3.4 Deployed!
