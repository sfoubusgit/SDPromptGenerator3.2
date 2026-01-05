#!/bin/bash
# Bash script to deploy to GitHub Pages
# This script builds the project and prepares it for deployment

echo "Building project for GitHub Pages..."
npm run build

if [ $? -ne 0 ]; then
    echo "Build failed!"
    exit 1
fi

echo "Build successful!"
echo ""
echo "Next steps:"
echo "1. Navigate to the dist folder: cd dist"
echo "2. Initialize git (if needed): git init"
echo "3. Add files: git add ."
echo "4. Commit: git commit -m 'Deploy to GitHub Pages'"
echo "5. Push to gh-pages: git push -u origin gh-pages --force"
echo ""
echo "Or use the automated GitHub Actions workflow by pushing to main branch."

