# GitHub Codespaces Setup Guide

Complete walkthrough to build and run the Hindi Bill Note Sheet Generator in GitHub Codespaces.

## 🚀 Quick Start (One Command)

```bash
bash setup-codespaces.sh
```

## 📋 Manual Setup Steps

### Step 1: Open in Codespaces

1. Go to https://github.com/CRAJKUMARSINGH/TEMP
2. Click the green **Code** button
3. Select **Codespaces** tab
4. Click **Create codespace on main**

Wait for the Codespace to initialize (2-3 minutes).

### Step 2: Install Dependencies

```bash
# Install pnpm globally (if not already installed)
npm install -g pnpm

# Install all workspace dependencies
pnpm install
```

### Step 3: Navigate to Frontend App

```bash
cd artifacts/hindi-bill
```

### Step 4: Set Environment Variables

```bash
# Create .env file with required variables
cat > .env << 'EOF'
PORT=5173
BASE_PATH=/
NODE_ENV=development
EOF
```

### Step 5: Start Development Server

```bash
pnpm run dev
```

The app will start on port 5173. Codespaces will automatically forward the port.

### Step 6: Access the App

- Codespaces will show a notification: **"Your application running on port 5173 is available"**
- Click **Open in Browser** or **Open in Preview**
- Or go to the **PORTS** tab and click the globe icon next to port 5173

## 🎯 What You'll See

The Hindi Bill Note Sheet Generator with:
- ✨ Navratri-themed UI with diyas and rangoli
- 📝 Input form for bill details
- 👁️ Live preview of the note sheet
- 🖨️ PDF generation capability

## 🛠️ Available Commands

```bash
# Development server (hot reload)
pnpm run dev

# Build for production
pnpm run build:vercel

# Preview production build
pnpm run serve

# Type checking
pnpm run typecheck
```

## 📁 Project Structure

```
TEMP/
├── artifacts/
│   └── hindi-bill/          # 👈 Frontend React app (Vite)
│       ├── src/
│       │   ├── pages/
│       │   │   └── BillForm.tsx    # Main form component
│       │   ├── components/         # UI components
│       │   └── App.tsx
│       ├── vite.config.ts          # Dev config
│       ├── vite.config.vercel.ts   # Production config
│       └── package.json
├── lib/                     # Shared libraries
└── package.json             # Root workspace config
```

## 🔧 Troubleshooting

### Port Already in Use

```bash
# Kill process on port 5173
npx kill-port 5173

# Or use a different port
PORT=3000 pnpm run dev
```

### Missing Environment Variables

If you see errors about `PORT` or `BASE_PATH`:

```bash
cd artifacts/hindi-bill
export PORT=5173
export BASE_PATH=/
pnpm run dev
```

### Dependencies Not Installing

```bash
# Clear cache and reinstall
rm -rf node_modules pnpm-lock.yaml
pnpm install
```

### TypeScript Errors

```bash
# Run type checking
pnpm run typecheck

# Skip type checking during dev
pnpm run dev --force
```

## 🌐 Accessing from Outside Codespaces

Your Codespace URL will be:
```
https://<codespace-name>-5173.app.github.dev
```

You can share this URL with others (if your Codespace is public).

## 💾 Saving Your Work

Changes in Codespaces are automatically saved to your GitHub repository:

```bash
git add .
git commit -m "Your changes"
git push
```

## 🎨 Features to Try

1. **Fill the Bill Form**
   - Enter contractor details
   - Add work information
   - Set dates and amounts

2. **Live Preview**
   - See the note sheet update in real-time
   - Preview exactly what will print

3. **Generate PDF**
   - Click "Print / Save PDF"
   - Opens in new window
   - Use browser's print to save as PDF

## 📱 Mobile/Tablet Access

Codespaces works on mobile browsers:
1. Open the Codespace URL on your device
2. The app is fully responsive
3. Touch-friendly interface

## 🔒 Security Notes

- Codespaces are private by default
- Environment variables are secure
- No sensitive data is stored in the frontend app
- All processing happens client-side

## 🆘 Need Help?

- Check the [VERCEL_DEPLOYMENT.md](./VERCEL_DEPLOYMENT.md) for deployment info
- Review [package.json](./artifacts/hindi-bill/package.json) for available scripts
- Open an issue on GitHub

## 🎉 Success!

You should now see the Hindi Bill Note Sheet Generator running with:
- 🪔 Festive Navratri theme
- 📋 Interactive form
- 👁️ Live preview
- 🖨️ PDF generation

Happy coding! 🚀
