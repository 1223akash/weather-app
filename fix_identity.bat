@echo off
cd /d "%~dp0"
echo ==========================================
echo Fixing Git Identity
echo ==========================================

echo 1. Setting Git Config...
git config user.name "1223akash"
git config user.email "1223akash@users.noreply.github.com"

echo 2. Amending previous commit...
git commit --amend --reset-author --no-edit

echo 3. Force pushing to GitHub...
git push --force origin main

echo.
echo [SUCCESS] Identity updated to '1223akash'.
