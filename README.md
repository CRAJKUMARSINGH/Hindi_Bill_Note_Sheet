# 🪔 Hindi Bill Note Sheet Generator

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/CRAJKUMARSINGH/TEMP)
[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/CRAJKUMARSINGH/TEMP.git)

A beautiful, Navratri-themed web application for generating Hindi Bill Note Sheets for PWD Rajasthan.

## ✨ Features

- 🎨 **Festive UI**: Navratri-themed design with diyas and rangoli
- 📝 **Interactive Form**: Easy-to-use input form with autocomplete
- 👁️ **Live Preview**: See your note sheet update in real-time
- 🖨️ **PDF Generation**: Print or save as PDF with one click
- 📱 **Responsive**: Works on desktop, tablet, and mobile
- 🌐 **Bilingual**: Hindi and English labels throughout

## 🚀 Quick Start

### GitHub Codespaces (Easiest)

1. Click the **Open in GitHub Codespaces** badge above
2. Wait for the environment to load (2-3 minutes)
3. Run the setup script:
   ```bash
   bash setup-codespaces.sh
   ```
4. Start developing! 🎉

[📖 Full Codespaces Guide](./CODESPACES_SETUP.md)

### Local Development

```bash
# Clone the repository
git clone https://github.com/CRAJKUMARSINGH/TEMP.git
cd TEMP

# Install pnpm
npm install -g pnpm

# Install dependencies
pnpm install

# Start the frontend app
cd artifacts/hindi-bill
pnpm run dev
```

[📖 Quick Start Guide](./QUICK_START.md)

### Deploy to Vercel

Click the **Deploy with Vercel** badge above or:

```bash
npm i -g vercel
vercel
```

[📖 Deployment Guide](./VERCEL_DEPLOYMENT.md)

## 📁 Project Structure

```
TEMP/
├── artifacts/
│   ├── hindi-bill/              # 🎯 Frontend React App (Vite + TypeScript)
│   │   ├── src/
│   │   │   ├── pages/
│   │   │   │   └── BillForm.tsx # Main form component
│   │   │   ├── components/      # UI components
│   │   │   └── App.tsx
│   │   ├── vite.config.ts       # Development config
│   │   └── vite.config.vercel.ts # Production config
│   ├── api-server/              # Backend API (Express + TypeScript)
│   └── mockup-sandbox/          # UI mockup sandbox
├── lib/                         # Shared libraries
│   ├── api-client-react/        # React API client
│   ├── api-spec/                # OpenAPI specification
│   ├── api-zod/                 # Zod schemas
│   └── db/                      # Database schemas
├── .devcontainer/               # Codespaces configuration
├── setup-codespaces.sh          # Automated setup script
├── vercel.json                  # Vercel deployment config
└── README.md                    # This file
```

## 🛠️ Tech Stack

- **Frontend**: React 19, TypeScript, Vite, Tailwind CSS
- **UI Components**: Radix UI, Lucide Icons
- **Styling**: Tailwind CSS with custom Navratri theme
- **Build Tool**: Vite
- **Package Manager**: pnpm (monorepo)
- **Deployment**: Vercel

## 📋 Available Scripts

### Frontend (artifacts/hindi-bill)

```bash
pnpm run dev          # Start development server
pnpm run build        # Build for production
pnpm run build:vercel # Build for Vercel deployment
pnpm run serve        # Preview production build
pnpm run typecheck    # Run TypeScript checks
```

### Root (workspace)

```bash
pnpm install          # Install all dependencies
pnpm run build        # Build all packages
pnpm run typecheck    # Type check all packages
```

## 🎯 Usage

1. **Open the app** in your browser (http://localhost:5173)
2. **Fill in the form**:
   - Bill details (number, type, dates)
   - Work information
   - Contractor details (with autocomplete)
   - Financial details
3. **Preview** the note sheet in real-time
4. **Generate PDF** by clicking the print button
5. **Save or print** using your browser's print dialog

## 🎨 Customization

### Office Name
Default: "PWD Electric Division, Udaipur"

To change, edit `artifacts/hindi-bill/src/pages/BillForm.tsx`:
```typescript
officeName: "Your Office Name Here",
```

### Contractor List
Add/edit contractors in the `CONTRACTORS` array in `BillForm.tsx`.

### Theme Colors
Modify the Navratri theme in the component styles or Tailwind config.

## 🐛 Troubleshooting

### Port Already in Use
```bash
npx kill-port 5173
# or
PORT=3000 pnpm run dev
```

### Dependencies Issues
```bash
rm -rf node_modules pnpm-lock.yaml
pnpm install
```

### TypeScript Errors
```bash
pnpm run typecheck
```

See [CODESPACES_SETUP.md](./CODESPACES_SETUP.md#-troubleshooting) for more.

## 📚 Documentation

- [📖 Codespaces Setup Guide](./CODESPACES_SETUP.md) - Complete setup walkthrough
- [📖 Quick Start Guide](./QUICK_START.md) - Fast setup reference
- [📖 Vercel Deployment Guide](./VERCEL_DEPLOYMENT.md) - Deployment instructions

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

MIT License - feel free to use this project for your needs.

## 🙏 Acknowledgments

- PWD Rajasthan for the bill format requirements
- Navratri festival for the beautiful theme inspiration
- Open source community for the amazing tools

## 📞 Support

- 📧 Create an issue on GitHub
- 💬 Check existing issues for solutions
- 📖 Read the documentation guides

---

Made with ❤️ for PWD Rajasthan | 🪔 नवरात्रि की शुभकामनाएं
