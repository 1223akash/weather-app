@echo off
cd /d "%~dp0"
echo ==========================================
echo Pushing Error Handling Fix
echo ==========================================

echo 1. Committing fix...
git add script.js
git commit -m "Fix: Add error handling for failed API calls"

echo 2. Pushing to GitHub...
git push origin master

echo.
echo [SUCCESS] Fix pushed!
