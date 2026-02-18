@echo off
cd /d "%~dp0"
echo ==========================================
echo Weather App Deployment Script
echo ==========================================

REM Check for Git
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Git is not installed or not in PATH.
    exit /b 1
)

REM Check for GitHub CLI
gh --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: GitHub CLI 'gh' is not installed or not in PATH.
    exit /b 1
)

echo.
echo 1. Initializing Git Repository...
git init
if %errorlevel% neq 0 echo [WARN] git init failed or repo already exists.

echo.
echo 2. Adding files...
git add .

echo.
echo 3. Committing changes...
git commit -m "Initial commit"
if %errorlevel% neq 0 echo [WARN] Nothing to commit or commit failed.

echo.
echo 4. Creating GitHub Repository (weather-app)...
echo    (If you are not logged in, this will fail. Run 'gh auth login' first)
call gh repo create weather-app --public --source=. --remote=origin --push

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to create/push repository. 
    echo Please ensure you are logged into GitHub CLI using 'gh auth login'.
    echo If the repo 'weather-app' already exists, you might need to link it manually.
) else (
    echo.
    echo [SUCCESS] Repository created and code pushed!
    echo.
    echo Next steps:
    echo 1. Go to your repository settings on GitHub.
    echo 2. Enable GitHub Pages (Deploy from branch 'main' / root).
)


