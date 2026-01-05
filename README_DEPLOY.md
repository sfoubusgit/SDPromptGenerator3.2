# Deploy Ready Version - Stable Diffusion Prompt Generator V3.2

This is a **deployment-ready copy** of the Stable Diffusion Prompt Generator, specifically configured for GitHub Pages deployment.

## ✅ What's Different from the Original

This folder has been pre-configured with:

1. **GitHub Pages Base Path**: Automatically set to `/sd_prompt_generator_v3.2/` for production builds
2. **Deployment Files**: 
   - `.nojekyll` in `dist/` folder (disables Jekyll processing)
   - `404.html` in `dist/` folder (SPA routing support)
3. **Automated Deployment**: GitHub Actions workflow configured
4. **Documentation**: Complete deployment guides included

## 🚀 Quick Start

### Option 1: Deploy from dist folder (Recommended)

1. Navigate to the `dist` folder
2. Follow the instructions in `dist/README.md`

### Option 2: Use GitHub Actions

1. Push this folder to your GitHub repository
2. GitHub Actions will automatically build and deploy

### Option 3: Manual Deploy Script

- **Windows**: Run `.\deploy.ps1`
- **Linux/Mac**: Run `./deploy.sh`

## 📚 Documentation

- **Quick Deploy Guide**: See `dist/README.md`
- **Full Deployment Guide**: See `DEPLOYMENT_GUIDE.md`
- **GitHub Actions**: See `.github/workflows/deploy.yml`

## ⚙️ Configuration

- **Base Path**: `/sd_prompt_generator_v3.2/` (configured in `vite.config.ts`)
- **Repository**: `sfoubusgit/sd_prompt_generator_v3.2`
- **Live URL**: `https://sfoubusgit.github.io/sd_prompt_generator_v3.2/`

## 📝 Notes

- The original folder remains unchanged
- This copy is ready for immediate deployment
- All build configurations are production-ready
- The `dist` folder contains the pre-built, deployable files

---

**Status**: ✅ Ready for GitHub Pages Deployment

