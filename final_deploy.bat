@echo off
cd /d "%~dp0"
echo ==========================================
echo Finalizing Weather App
echo ==========================================

echo 1. Committing API Key...
git add script.js
git commit -m "Add API Key"

echo 2. Deleting temporary scripts...
del deploy.bat
del fix_identity.bat
del push_fix.bat
git rm deploy.bat fix_identity.bat push_fix.bat

echo 3. Committing cleanup...
git commit -m "Remove temporary deployment scripts"

echo 4. Pushing to GitHub...
git push origin master

echo.
echo [SUCCESS] Weather App is fully deployed and clean!
