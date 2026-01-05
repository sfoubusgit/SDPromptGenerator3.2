# Stable Diffusion Prompt Generator - Deploy Ready Version

This folder contains the production-ready build of the Stable Diffusion Prompt Generator, configured for GitHub Pages deployment.

## Contents

- `index.html` - Main application entry point
- `404.html` - SPA routing support for GitHub Pages
- `.nojekyll` - Disables Jekyll processing (required for proper asset loading)
- `assets/` - Compiled JavaScript and CSS files

## Quick Deploy

### Method 1: Manual Deploy

1. **Initialize git in this folder (if not already):**
   ```bash
   git init
   ```

2. **Add all files:**
   ```bash
   git add .
   ```

3. **Commit:**
   ```bash
   git commit -m "Deploy to GitHub Pages"
   ```

4. **Add remote (if not already added):**
   ```bash
   git remote add origin https://github.com/sfoubusgit/sd_prompt_generator_v3.2.git
   ```

5. **Push to gh-pages branch:**
   ```bash
   git branch -M gh-pages
   git push -u origin gh-pages --force
   ```

### Method 2: Automated Deploy

Push your code to the `main` branch and GitHub Actions will automatically build and deploy.

## Configuration

- **Base Path**: `/sd_prompt_generator_v3.2/`
- **Repository**: `sfoubusgit/sd_prompt_generator_v3.2`
- **Live URL**: `https://sfoubusgit.github.io/sd_prompt_generator_v3.2/`

## Important Notes

- The `.nojekyll` file is required to prevent GitHub Pages from processing files with Jekyll
- The `404.html` file ensures proper SPA routing on GitHub Pages
- All asset paths are relative to the base path `/sd_prompt_generator_v3.2/`

## Updating

After making changes to the source code:

1. Run `npm run build` from the project root
2. Copy the updated files from `dist/` to your deployment location
3. Commit and push the changes

For detailed deployment instructions, see `../DEPLOYMENT_GUIDE.md` in the project root.

