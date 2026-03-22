# 🪔 Hindi Bill Note Sheet Generator

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/CRAJKUMARSINGH/TEMP)
[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/CRAJKUMARSINGH/TEMP.git)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![TypeScript](https://img.shields.io/badge/TypeScript-5.9-blue.svg)](https://www.typescriptlang.org/)
[![React](https://img.shields.io/badge/React-19-61dafb.svg)](https://reactjs.org/)

> A beautiful, Navratri-themed web application for generating Hindi Bill Note Sheets for PWD Rajasthan Electric Division.

## ✨ Features

- 🎨 **Festive UI** - Navratri-themed design with diyas and rangoli
- 📝 **Interactive Form** - Easy-to-use input with autocomplete for contractors
- 👁️ **Live Preview** - Real-time note sheet updates as you type
- 🖨️ **PDF Generation** - One-click print or save as PDF
- 📱 **Fully Responsive** - Works seamlessly on desktop, tablet, and mobile
- 🌐 **Bilingual** - Hindi and English labels throughout
- ⚡ **Lightning Fast** - Built with Vite for instant hot reload
- 🎯 **Smart Validation** - Automatic deviation notes based on execution percentage

## 🚀 Quick Start

### Option 1: GitHub Codespaces (Easiest - No Setup Required!)

1. Click the **Open in GitHub Codespaces** badge above
2. Wait 2-3 minutes for environment setup
3. Run: `bash setup-codespaces.sh`
4. Start coding! 🎉

### Option 2: Local Development

```bash
# Clone the repository
git clone https://github.com/CRAJKUMARSINGH/TEMP.git
cd TEMP

# Install pnpm (if not already installed)
npm install -g pnpm

# Install dependencies
pnpm install

# Start the app
cd artifacts/hindi-bill
pnpm run dev
```

Open http://localhost:5173 in your browser.

### Option 3: Deploy to Vercel (Production)

Click the **Deploy with Vercel** badge above, or:

```bash
npm i -g vercel
vercel
```

## 🎯 How to Use

1. **Fill the Form**
   - Enter bill number, type (Running/Final), and dates
   - Add work details (name, agreement amount, completion date)
   - Select contractor from autocomplete dropdown
   - Enter financial details (bill amount, deductions, net payable)

2. **Live Preview**
   - Watch the note sheet update in real-time on the right side
   - See automatic deviation notes based on execution percentage
   - Preview exactly what will be printed

3. **Generate PDF**
   - Click "Print / Save PDF" button
   - Use browser's print dialog to save as PDF or print directly
   - Professional formatting ready for official use

## 📁 Project Structure

```
TEMP/
├── artifacts/
│   └── hindi-bill/              # 🎯 Main React App
│       ├── src/
│       │   ├── pages/
│       │   │   └── BillForm.tsx # Core form component
│       │   ├── components/      # Reusable UI components
│       │   └── App.tsx
│       ├── vite.config.ts       # Development config
│       └── vite.config.vercel.ts # Production config
├── .devcontainer/               # Codespaces auto-configuration
├── setup-codespaces.sh          # One-command setup script
├── vercel.json                  # Vercel deployment config
└── DOCUMENTATION.md             # Complete setup & deployment guide
```

## 🛠️ Tech Stack

- **Frontend**: React 19 + TypeScript + Vite
- **Styling**: Tailwind CSS with custom Navratri theme
- **UI Components**: Radix UI + Lucide Icons
- **Build Tool**: Vite (ultra-fast HMR)
- **Package Manager**: pnpm (efficient monorepo)
- **Deployment**: Vercel (zero-config)

## 📋 Available Commands

```bash
# Development
pnpm run dev          # Start dev server with hot reload
pnpm run build        # Build for production
pnpm run serve        # Preview production build locally
pnpm run typecheck    # Run TypeScript type checking

# Deployment
pnpm run build:vercel # Build optimized for Vercel
```

## 🎨 Customization

### Change Office Name

Edit `artifacts/hindi-bill/src/pages/BillForm.tsx`:

```typescript
officeName: "PWD Electric Division, Your City",
```

### Add/Edit Contractors

Modify the `CONTRACTORS` array in `BillForm.tsx`:

```typescript
const CONTRACTORS = [
  { name: "Contractor Name", address: "Address" },
  // Add more...
];
```

### Modify Theme Colors

Update Tailwind classes in component styles or create a custom theme.

## 🐛 Troubleshooting

**Port already in use?**
```bash
npx kill-port 5173
# or use different port
PORT=3000 pnpm run dev
```

**Dependencies issues?**
```bash
rm -rf node_modules pnpm-lock.yaml
pnpm install
```

**TypeScript errors?**
```bash
pnpm run typecheck
```

See [DOCUMENTATION.md](./DOCUMENTATION.md) for detailed troubleshooting.

## 📚 Documentation

- [📖 Complete Documentation](./DOCUMENTATION.md) - Setup, deployment, and troubleshooting
- [🎥 Video Guide](#-video-guide) - Visual walkthrough (coming soon)

## 🎥 Video Guide

### How to Use the App (3-minute walkthrough)

**Coming Soon!** We're creating a video guide covering:
1. Opening the app in Codespaces
2. Filling out the bill form
3. Using contractor autocomplete
4. Understanding deviation notes
5. Generating and saving PDFs

## 🤝 Contributing

We welcome contributions! Here's how:

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Make your changes and test thoroughly
4. Commit: `git commit -m 'Add amazing feature'`
5. Push: `git push origin feature/amazing-feature`
6. Open a Pull Request

## 📄 License

MIT License - Free to use for personal and commercial projects.

## 🙏 Acknowledgments

- PWD Rajasthan for bill format requirements
- Navratri festival for the beautiful theme inspiration
- Open source community for amazing tools

## 📞 Support

- 📧 [Create an issue](https://github.com/CRAJKUMARSINGH/TEMP/issues)
- 💬 Check [existing issues](https://github.com/CRAJKUMARSINGH/TEMP/issues) for solutions
- 📖 Read the [documentation](./DOCUMENTATION.md)

## ⭐ Star This Repo!

If you find this project useful, please give it a star! It helps others discover it.

---

**Made with ❤️ for PWD Rajasthan** | 🪔 **नवरात्रि की शुभकामनाएं**

