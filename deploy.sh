#!/bin/bash
# Max AI Upscaler - Quick Deployment Script

echo "🚀 Max AI Upscaler - Deployment Setup"
echo "======================================"
echo ""

# Check if Git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

echo "✅ Git is installed"
echo ""

# Check if Node.js is installed (optional)
if command -v node &> /dev/null; then
    echo "✅ Node.js is installed: $(node --version)"
else
    echo "⚠️  Node.js not found (optional for this project)"
fi

echo ""
echo "📋 Initializing repository..."

# Initialize git if not already initialized
if [ ! -d ".git" ]; then
    git init
    echo "✅ Git repository initialized"
else
    echo "✅ Git repository already exists"
fi

# Add all files
git add .
echo "✅ Files staged"

# Create initial commit
git commit -m "Initial commit: Max AI Upscaler - Production Ready" 2>/dev/null || echo "✅ Files already committed"

# Change branch to main if needed
if git branch -a | grep -q "main"; then
    echo "✅ Main branch exists"
else
    git branch -M main 2>/dev/null
    echo "✅ Branch renamed to main"
fi

echo ""
echo "🎉 Repository Ready!"
echo ""
echo "📝 Next Steps:"
echo "1. Create a GitHub repository at: https://github.com/new"
echo "2. Run this command to add the remote:"
echo "   git remote add origin https://github.com/YOUR_USERNAME/max-ai-upscaler.git"
echo "3. Push to GitHub:"
echo "   git push -u origin main"
echo "4. Deploy to Vercel at: https://vercel.com/new"
echo ""
echo "📚 For detailed instructions, see DEPLOYMENT_GUIDE.md"
echo ""
