# 📚 Complete Documentation

## Table of Contents

1. [Getting Started](#getting-started)
2. [GitHub Codespaces Setup](#github-codespaces-setup)
3. [Local Development](#local-development)
4. [Vercel Deployment](#vercel-deployment)
5. [Project Architecture](#project-architecture)
6. [Troubleshooting](#troubleshooting)
7. [Advanced Configuration](#advanced-configuration)

---

## Getting Started

The Hindi Bill Note Sheet Generator is a React-based web application designed for PWD Rajasthan Electric Division. Choose your preferred setup method below.

### Prerequisites

- **For Codespaces**: GitHub account (free)
- **For Local**: Node.js 18+, pnpm
- **For Deployment**: Vercel account (free)

---

## GitHub Codespaces Setup

### Automated Setup (Recommended)

1. **Open in Codespaces**
   - Click: [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/CRAJKUMARSINGH/TEMP)
   - Or: Go to repo → Code → Codespaces → Create codespace

2. **Run Setup Script**
   ```bash
   bash setup-codespaces.sh
   ```
   
   This script will:
   - ✅ Check Node.js and pnpm installation
   - ✅ Install all dependencies
   - ✅ Navigate to the app directory
   - ✅ Start the development server
   - ✅ Display access instructions

3. **Access the App**
   - Codespaces will show: "Your application running on port 5173 is available"
   - Click **Open in Browser** or go to PORTS tab
   - The app opens at: `https://<codespace-name>-5173.app.github.dev`

### Manual Setup

If you prefer manual control:

```bash
# Install pnpm globally
npm install -g pnpm

# Install dependencies
pnpm install

# Navigate to app
cd artifacts/hindi-bill

# Start dev server
pnpm run dev
```

### Codespaces Features

- **Auto-configuration**: `.devcontainer/devcontainer.json` sets up everything
- **Port forwarding**: Automatic for ports 5173 and 3000
- **VS Code extensions**: Pre-installed (ESLint, Prettier, TypeScript)
- **Persistent storage**: Your changes are saved automatically

---

## Local Development

### Installation

```bash
# Clone repository
git clone https://github.com/CRAJKUMARSINGH/TEMP.git
cd TEMP

# Install pnpm (if not installed)
npm install -g pnpm

# Install dependencies
pnpm install

# Start development server
cd artifacts/hindi-bill
pnpm run dev
```

### Development Workflow

```bash
# Start dev server (hot reload enabled)
pnpm run dev

# Run in different port
PORT=3000 pnpm run dev

# Type checking
pnpm run typecheck

# Build for production
pnpm run build

# Preview production build
pnpm run serve
```

### Environment Setup

Create `.env` in `artifacts/hindi-bill/` (optional):

```env
PORT=5173
BASE_PATH=/
NODE_ENV=development
```

---

## Vercel Deployment

### One-Click Deploy

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/CRAJKUMARSINGH/TEMP.git)

### Manual Deployment

```bash
# Install Vercel CLI
npm i -g vercel

# Login
vercel login

# Deploy
vercel
```

### Deployment Configuration

The project includes `vercel.json` with optimized settings:

```json
{
  "buildCommand": "cd artifacts/hindi-bill && pnpm install && pnpm run build:vercel",
  "outputDirectory": "artifacts/hindi-bill/dist",
  "installCommand": "pnpm install --no-frozen-lockfile",
  "framework": "vite"
}
```

### Production Build

```bash
cd artifacts/hindi-bill
pnpm run build:vercel
```

This uses `vite.config.vercel.ts` for production-optimized builds.

### Environment Variables

No environment variables required! The app runs entirely client-side.

---

## Project Architecture

### Monorepo Structure

```
TEMP/
├── artifacts/
│   ├── hindi-bill/          # 🎯 Main React App
│   │   ├── src/
│   │   │   ├── pages/
│   │   │   │   └── BillForm.tsx    # Core component
│   │   │   ├── components/         # UI components
│   │   │   ├── App.tsx             # App entry
│   │   │   └── main.tsx            # React entry
│   │   ├── public/                 # Static assets
│   │   ├── vite.config.ts          # Dev config
│   │   ├── vite.config.vercel.ts   # Prod config
│   │   ├── tailwind.config.js      # Tailwind setup
│   │   └── package.json
│   ├── api-server/          # Backend (not used in deployment)
│   └── mockup-sandbox/      # UI mockups
├── lib/                     # Shared libraries
│   ├── api-client-react/
│   ├── api-spec/
│   ├── api-zod/
│   └── db/
├── .devcontainer/           # Codespaces config
│   ├── devcontainer.json
│   └── README.md
├── setup-codespaces.sh      # Automated setup
├── vercel.json              # Vercel config
├── .vercelignore            # Deployment exclusions
├── pnpm-workspace.yaml      # Workspace config
└── package.json             # Root package
```

### Key Files

**BillForm.tsx** - Main component containing:
- Form state management
- Contractor autocomplete
- Live preview logic
- PDF generation
- Deviation note calculation

**vite.config.vercel.ts** - Production build config:
- Optimized chunking
- Asset handling
- Base path configuration

**vercel.json** - Deployment settings:
- Build commands
- Output directory
- Framework detection

### Technology Stack

| Layer | Technology | Purpose |
|-------|-----------|---------|
| Frontend | React 19 | UI framework |
| Language | TypeScript 5.9 | Type safety |
| Build Tool | Vite | Fast dev & build |
| Styling | Tailwind CSS | Utility-first CSS |
| UI Components | Radix UI | Accessible components |
| Icons | Lucide React | Icon library |
| Package Manager | pnpm | Efficient monorepo |
| Deployment | Vercel | Zero-config hosting |

---

## Troubleshooting

### Common Issues

#### Port Already in Use

**Problem**: `Error: listen EADDRINUSE: address already in use :::5173`

**Solution**:
```bash
# Kill process on port 5173
npx kill-port 5173

# Or use different port
PORT=3000 pnpm run dev
```

#### Dependencies Not Installing

**Problem**: `pnpm install` fails or hangs

**Solution**:
```bash
# Clear cache and reinstall
rm -rf node_modules pnpm-lock.yaml
pnpm install

# If still fails, try npm
npm install
```

#### TypeScript Errors

**Problem**: Red squiggly lines or build errors

**Solution**:
```bash
# Run type checking
pnpm run typecheck

# Check specific file
npx tsc --noEmit src/pages/BillForm.tsx

# Force build (skip type check)
pnpm run build --force
```

#### Codespaces Not Loading

**Problem**: Codespace stuck on "Setting up..."

**Solution**:
1. Wait 5 minutes (first-time setup is slow)
2. Refresh the page
3. Delete and recreate the Codespace
4. Check GitHub status page

#### PDF Not Generating

**Problem**: Print button doesn't work

**Solution**:
1. Check browser console for errors
2. Ensure all required fields are filled
3. Try different browser (Chrome recommended)
4. Disable browser extensions

#### Build Fails on Vercel

**Problem**: Deployment fails with build errors

**Solution**:
```bash
# Test build locally first
cd artifacts/hindi-bill
pnpm run build:vercel

# Check Vercel logs
vercel logs

# Verify vercel.json configuration
cat vercel.json
```

### Performance Issues

#### Slow Development Server

```bash
# Clear Vite cache
rm -rf artifacts/hindi-bill/.vite

# Restart dev server
pnpm run dev
```

#### Large Bundle Size

```bash
# Analyze bundle
cd artifacts/hindi-bill
pnpm run build
npx vite-bundle-visualizer
```

---

## Advanced Configuration

### Customizing the App

#### Change Office Name

Edit `artifacts/hindi-bill/src/pages/BillForm.tsx`:

```typescript
const [formData, setFormData] = useState<FormData>({
  // ... other fields
  officeName: "PWD Electric Division, Your City",
});
```

#### Add Contractors

```typescript
const CONTRACTORS = [
  { name: "New Contractor", address: "New Address" },
  // ... existing contractors
];
```

#### Modify Deviation Logic

```typescript
const generateNotePoints = () => {
  const executionPercent = /* calculation */;
  
  // For Running Bills
  if (!formData.isFinal && executionPercent > 100) {
    points.push("Deviation note for over-execution");
  }
  
  // For Final Bills
  if (formData.isFinal && (executionPercent < 90 || executionPercent > 100)) {
    points.push("Deviation note for under/over-execution");
  }
};
```

#### Change Theme Colors

Update Tailwind classes or modify `tailwind.config.js`:

```javascript
module.exports = {
  theme: {
    extend: {
      colors: {
        'navratri-orange': '#FF6B35',
        'navratri-yellow': '#F7931E',
      }
    }
  }
}
```

### Workspace Commands

```bash
# Install dependencies for all packages
pnpm install

# Build all packages
pnpm run build

# Type check all packages
pnpm run typecheck

# Run specific package command
pnpm --filter @workspace/hindi-bill run dev
```

### Git Workflow

```bash
# Check status
git status

# Stage changes
git add .

# Commit
git commit -m "Description of changes"

# Push to remote
git push origin main

# Pull latest changes
git pull origin main
```

### Debugging

#### Enable Verbose Logging

```bash
# Vite debug mode
DEBUG=vite:* pnpm run dev

# pnpm debug mode
pnpm run dev --loglevel debug
```

#### Browser DevTools

1. Open DevTools (F12)
2. Check Console for errors
3. Use React DevTools extension
4. Monitor Network tab for API calls

---

## Support & Resources

### Getting Help

- 📧 [Create an issue](https://github.com/CRAJKUMARSINGH/TEMP/issues)
- 💬 [Discussions](https://github.com/CRAJKUMARSINGH/TEMP/discussions)
- 📖 [README](./README.md)

### External Resources

- [React Documentation](https://react.dev/)
- [Vite Guide](https://vitejs.dev/guide/)
- [Tailwind CSS Docs](https://tailwindcss.com/docs)
- [Vercel Docs](https://vercel.com/docs)
- [pnpm Documentation](https://pnpm.io/)

---

**Last Updated**: March 2026

**Made with ❤️ for PWD Rajasthan**
