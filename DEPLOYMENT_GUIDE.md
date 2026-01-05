# GitHub Pages Deployment Guide

This guide will help you deploy the Stable Diffusion Prompt Generator to GitHub Pages.

## Prerequisites

- Git installed and configured
- GitHub account
- Repository: `sd_prompt_generator_v3.2`

## Deployment Steps

### Option 1: Deploy from `dist` folder (Recommended)

1. **Build the project:**
   ```bash
   npm run build
   ```

2. **Navigate to the dist folder:**
   ```bash
   cd dist
   ```

3. **Initialize git (if not already initialized):**
   ```bash
   git init
   ```

4. **Add all files:**
   ```bash
   git add .
   ```

5. **Commit:**
   ```bash
   git commit -m "Deploy to GitHub Pages"
   ```

6. **Add remote (if not already added):**
   ```bash
   git remote add origin https://github.com/sfoubusgit/sd_prompt_generator_v3.2.git
   ```

7. **Push to gh-pages branch:**
   ```bash
   git branch -M gh-pages
   git push -u origin gh-pages --force
   ```

### Option 2: Deploy using GitHub Actions (Automated)

1. Create a `.github/workflows/deploy.yml` file (see below)
2. Push to main branch
3. GitHub Actions will automatically build and deploy

### Option 3: Deploy from root directory

If you want to deploy the entire project:

1. **Build the project:**
   ```bash
   npm run build
   ```

2. **Copy dist contents to root (if needed):**
   - Or configure GitHub Pages to serve from `/dist` folder

3. **Configure GitHub Pages:**
   - Go to repository Settings → Pages
   - Source: Select `gh-pages` branch
   - Folder: `/ (root)` or `/dist` depending on your setup

## GitHub Pages Configuration

1. Go to your repository on GitHub
2. Navigate to **Settings** → **Pages**
3. Configure:
   - **Source**: `Deploy from a branch`
   - **Branch**: `gh-pages`
   - **Folder**: `/ (root)`
4. Click **Save**

## Important Files for Deployment

- `dist/index.html` - Main HTML file
- `dist/.nojekyll` - Disables Jekyll processing (required for files starting with `_`)
- `dist/404.html` - Handles SPA routing on GitHub Pages
- `dist/assets/` - All JavaScript and CSS assets

## Verification

After deployment, visit:
```
https://sfoubusgit.github.io/sd_prompt_generator_v3.2/
```

The app should load correctly with all assets working.

## Troubleshooting

### Blank Screen
- Ensure the base path in `vite.config.ts` matches your repository name
- Check browser console for 404 errors
- Verify `.nojekyll` file exists in dist folder

### Assets Not Loading
- Verify asset paths in `dist/index.html` include the base path
- Check that all files in `dist/assets/` are committed

### Routing Issues
- Ensure `404.html` exists and redirects properly
- Check that base path is correctly configured

## Updating the Deployment

After making changes:

1. **Rebuild:**
   ```bash
   npm run build
   ```

2. **Navigate to dist:**
   ```bash
   cd dist
   ```

3. **Commit and push:**
   ```bash
   git add .
   git commit -m "Update deployment"
   git push
   ```

## Notes

- The base path is automatically set to `/sd_prompt_generator_v3.2/` for production builds
- For local development, use `npm run dev` (base path is `/`)
- The build process automatically handles asset paths

