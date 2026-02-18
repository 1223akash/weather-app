@echo off
cd /d "%~dp0"
echo ==========================================
echo Deploying V3.1 Fixes
echo ==========================================

echo 1. Adding fixes...
git add .

echo 2. Committing UI/Data Patch...
git commit -m "Fix: V3.1 - Corrected Country Code and Strengthened Grid Layout"

echo 3. Pushing to master...
git push origin master

echo.
echo [SUCCESS] V3.1 Deployed!
