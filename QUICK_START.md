# 🚀 Quick Start Guide

## GitHub Codespaces (Recommended)

### One-Click Setup

1. Click: [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/CRAJKUMARSINGH/TEMP)

2. Wait for setup to complete (2-3 minutes)

3. Run:
   ```bash
   bash setup-codespaces.sh
   ```

4. Start coding! 🎉

### Manual Commands

```bash
# Install dependencies
pnpm install

# Start development server
cd artifacts/hindi-bill
pnpm run dev
```

## Local Development

### Prerequisites

- Node.js 18+ 
- pnpm (or npm/yarn)

### Setup

```bash
# Clone repository
git clone https://github.com/CRAJKUMARSINGH/TEMP.git
cd TEMP

# Install pnpm
npm install -g pnpm

# Install dependencies
pnpm install

# Start frontend
cd artifacts/hindi-bill
pnpm run dev
```

## Vercel Deployment

### One-Click Deploy

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/CRAJKUMARSINGH/TEMP.git)

### Manual Deploy

```bash
# Install Vercel CLI
npm i -g vercel

# Deploy
vercel
```

See [VERCEL_DEPLOYMENT.md](./VERCEL_DEPLOYMENT.md) for details.

## 📁 Project Structure

```
TEMP/
├── artifacts/
│   └── hindi-bill/          # Frontend React app
│       ├── src/
│       │   └── pages/
│       │       └── BillForm.tsx
│       └── package.json
├── setup-codespaces.sh      # Automated setup
├── CODESPACES_SETUP.md      # Detailed guide
└── vercel.json              # Deployment config
```

## 🎯 What You Get

- 🪔 Hindi Bill Note Sheet Generator
- 📝 Interactive form with live preview
- 🖨️ PDF generation
- 🎨 Navratri-themed UI
- 📱 Fully responsive

## 🆘 Need Help?

- [Codespaces Setup Guide](./CODESPACES_SETUP.md)
- [Vercel Deployment Guide](./VERCEL_DEPLOYMENT.md)
- [GitHub Issues](https://github.com/CRAJKUMARSINGH/TEMP/issues)

## 🎉 Success Checklist

- [ ] Codespace/Local environment ready
- [ ] Dependencies installed
- [ ] Dev server running on port 5173
- [ ] App accessible in browser
- [ ] Can fill form and see live preview
- [ ] PDF generation works

Happy coding! 🚀🪔
