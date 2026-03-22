# Codespaces Configuration

This directory contains the configuration for GitHub Codespaces.

## What's Included

- **Node.js 20**: Latest LTS version
- **pnpm**: Fast, disk space efficient package manager
- **VS Code Extensions**: 
  - ESLint
  - Prettier
  - Tailwind CSS IntelliSense
  - TypeScript support
  - Auto Rename Tag
  - Path IntelliSense

## Automatic Setup

When you open this repository in Codespaces:

1. ✅ Node.js 20 is pre-installed
2. ✅ pnpm is installed globally
3. ✅ All workspace dependencies are installed
4. ✅ Ports 5173 and 3000 are forwarded
5. ✅ VS Code extensions are installed

## Manual Start

After Codespace is ready:

```bash
cd artifacts/hindi-bill
pnpm run dev
```

## Port Forwarding

- **Port 5173**: Hindi Bill frontend app (auto-notifies)
- **Port 3000**: API server (if needed)

## Customization

Edit `devcontainer.json` to:
- Add more VS Code extensions
- Change Node.js version
- Add additional tools
- Modify port forwarding

## Learn More

- [Codespaces Documentation](https://docs.github.com/en/codespaces)
- [Dev Container Specification](https://containers.dev/)
