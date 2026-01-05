# PowerShell script to deploy to GitHub Pages
# This script builds the project and prepares it for deployment

Write-Host "Building project for GitHub Pages..." -ForegroundColor Green
npm run build

if ($LASTEXITCODE -ne 0) {
    Write-Host "Build failed!" -ForegroundColor Red
    exit 1
}

Write-Host "Build successful!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Navigate to the dist folder: cd dist" -ForegroundColor Cyan
Write-Host "2. Initialize git (if needed): git init" -ForegroundColor Cyan
Write-Host "3. Add files: git add ." -ForegroundColor Cyan
Write-Host "4. Commit: git commit -m 'Deploy to GitHub Pages'" -ForegroundColor Cyan
Write-Host "5. Push to gh-pages: git push -u origin gh-pages --force" -ForegroundColor Cyan
Write-Host ""
Write-Host "Or use the automated GitHub Actions workflow by pushing to main branch." -ForegroundColor Yellow

