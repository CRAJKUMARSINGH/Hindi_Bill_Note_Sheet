# Vercel Deployment Guide

This project is configured for easy deployment on Vercel.

## Quick Deploy

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/CRAJKUMARSINGH/TEMP.git)

## Manual Deployment Steps

1. **Install Vercel CLI** (optional)
   ```bash
   npm i -g vercel
   ```

2. **Login to Vercel**
   ```bash
   vercel login
   ```

3. **Deploy**
   ```bash
   vercel
   ```

## Configuration

The project uses:
- **Framework**: Vite + React
- **Build Command**: `cd artifacts/hindi-bill && pnpm install && pnpm run build:vercel`
- **Output Directory**: `artifacts/hindi-bill/dist`
- **Install Command**: `pnpm install --no-frozen-lockfile`

## Environment Variables

No environment variables are required for the Hindi Bill Note Sheet Generator.

## Project Structure

```
├── artifacts/
│   └── hindi-bill/          # Frontend React app
│       ├── src/
│       ├── vite.config.ts   # Development config
│       └── vite.config.vercel.ts  # Production config for Vercel
├── vercel.json              # Vercel configuration
└── .vercelignore           # Files to ignore during deployment
```

## Features

- ✅ Hindi Bill Note Sheet Generator
- ✅ PDF Generation
- ✅ Responsive Design
- ✅ No backend required (static site)

## Troubleshooting

If deployment fails:

1. Check that pnpm is available (Vercel supports it by default)
2. Verify the build command runs locally: `cd artifacts/hindi-bill && pnpm run build:vercel`
3. Check Vercel build logs for specific errors

## Local Testing

Test the production build locally:

```bash
cd artifacts/hindi-bill
pnpm install
pnpm run build:vercel
pnpm run serve
```

## Support

For issues, please check the Vercel deployment logs or create an issue in the repository.
