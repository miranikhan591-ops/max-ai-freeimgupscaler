@echo off
REM Max AI Upscaler - Quick Deployment Script (Windows)

echo.
echo 🚀 Max AI Upscaler - Deployment Setup
echo ======================================
echo.

REM Check if Git is installed
where git >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ❌ Git is not installed. Please install Git first.
    exit /b 1
)

echo ✅ Git is installed
echo.

REM Check if Node.js is installed (optional)
where node >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    for /f "tokens=*" %%i in ('node --version') do set NODE_VERSION=%%i
    echo ✅ Node.js is installed: %NODE_VERSION%
) else (
    echo ⚠️  Node.js not found (optional for this project)
)

echo.
echo 📋 Initializing repository...

REM Initialize git if not already initialized
if not exist ".git" (
    call git init
    echo ✅ Git repository initialized
) else (
    echo ✅ Git repository already exists
)

REM Add all files
call git add .
echo ✅ Files staged

REM Create initial commit
call git commit -m "Initial commit: Max AI Upscaler - Production Ready" 2>nul
if %ERRORLEVEL% EQU 0 (
    echo ✅ Files committed
) else (
    echo ✅ Files already committed
)

REM Change branch to main if needed
call git branch -M main 2>nul
echo ✅ Branch set to main

echo.
echo 🎉 Repository Ready!
echo.
echo 📝 Next Steps:
echo 1. Create a GitHub repository at: https://github.com/new
echo 2. Run this command to add the remote:
echo    git remote add origin https://github.com/YOUR_USERNAME/max-ai-upscaler.git
echo 3. Push to GitHub:
echo    git push -u origin main
echo 4. Deploy to Vercel at: https://vercel.com/new
echo.
echo 📚 For detailed instructions, see DEPLOYMENT_GUIDE.md
echo.
pause
