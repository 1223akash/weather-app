@echo off
cd /d "%~dp0"
echo ==========================================
echo Deploying V3.2 (Visual Polish & Cache Bust)
echo ==========================================

echo 1. Adding files...
git add .

echo 2. Committing V3.2...
git commit -m "Polish: V3.2 - UI Overhaul, Grid Fixes, cache busting"

echo 3. Pushing to master...
git push origin master

echo.
echo [SUCCESS] V3.2 Deployed!
