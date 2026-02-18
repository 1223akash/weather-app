@echo off
cd /d "%~dp0"
echo ==========================================
echo Fixing and Pushing to GitHub
echo ==========================================

echo 1. Configuring Git...
git config user.name "1223akash"
git config user.email "1223akash@users.noreply.github.com"

echo 2. Committing changes...
git add .
git commit -m "Add API Key missing alert"

echo 3. Pushing to master...
git push -u origin master

echo.
echo [SUCCESS] Changes pushed!
