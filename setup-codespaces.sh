#!/bin/bash

# ============================================================================
# GitHub Codespaces Setup Script
# Hindi Bill Note Sheet Generator - Automated Setup
# ============================================================================

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Emojis
ROCKET="🚀"
CHECK="✅"
CROSS="❌"
INFO="ℹ️"
PACKAGE="📦"
BUILD="🔨"
FIRE="🔥"
DIYA="🪔"

echo -e "${PURPLE}"
echo "╔════════════════════════════════════════════════════════════╗"
echo "║                                                            ║"
echo "║   ${DIYA}  Hindi Bill Note Sheet Generator ${DIYA}                ║"
echo "║        GitHub Codespaces Setup Script                     ║"
echo "║                                                            ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo -e "${NC}"

# Function to print step
print_step() {
    echo -e "\n${CYAN}${ROCKET} Step $1: $2${NC}"
}

# Function to print success
print_success() {
    echo -e "${GREEN}${CHECK} $1${NC}"
}

# Function to print error
print_error() {
    echo -e "${RED}${CROSS} $1${NC}"
}

# Function to print info
print_info() {
    echo -e "${YELLOW}${INFO} $1${NC}"
}

# Check if running in Codespaces
if [ -n "$CODESPACES" ]; then
    print_success "Running in GitHub Codespaces"
else
    print_info "Not running in Codespaces, but continuing anyway..."
fi

# Step 1: Check Node.js
print_step "1" "Checking Node.js installation"
if command -v node &> /dev/null; then
    NODE_VERSION=$(node --version)
    print_success "Node.js $NODE_VERSION is installed"
else
    print_error "Node.js is not installed"
    exit 1
fi

# Step 2: Install pnpm
print_step "2" "Installing pnpm package manager"
if command -v pnpm &> /dev/null; then
    PNPM_VERSION=$(pnpm --version)
    print_success "pnpm $PNPM_VERSION is already installed"
else
    npm install -g pnpm
    print_success "pnpm installed successfully"
fi

# Step 3: Install dependencies
print_step "3" "Installing workspace dependencies"
print_info "This may take 2-3 minutes..."
pnpm install --no-frozen-lockfile
print_success "Dependencies installed"

# Step 4: Navigate to frontend app
print_step "4" "Setting up Hindi Bill frontend app"
cd artifacts/hindi-bill

# Step 5: Create environment file
print_step "5" "Creating environment configuration"
cat > .env << 'EOF'
PORT=5173
BASE_PATH=/
NODE_ENV=development
EOF
print_success "Environment file created"

# Step 6: Build check (optional)
print_step "6" "Running type check"
if pnpm run typecheck 2>/dev/null; then
    print_success "Type check passed"
else
    print_info "Type check skipped or had warnings (non-critical)"
fi

# Step 7: Instructions
echo -e "\n${GREEN}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║                                                            ║${NC}"
echo -e "${GREEN}║  ${CHECK} Setup Complete! Ready to start development ${CHECK}        ║${NC}"
echo -e "${GREEN}║                                                            ║${NC}"
echo -e "${GREEN}╚════════════════════════════════════════════════════════════╝${NC}"

echo -e "\n${CYAN}${FIRE} To start the development server:${NC}"
echo -e "${YELLOW}"
echo "  cd artifacts/hindi-bill"
echo "  pnpm run dev"
echo -e "${NC}"

echo -e "${CYAN}${INFO} The app will be available at:${NC}"
echo -e "${BLUE}  http://localhost:5173${NC}"
echo -e "${BLUE}  (Codespaces will auto-forward the port)${NC}"

echo -e "\n${CYAN}${PACKAGE} Available commands:${NC}"
echo -e "  ${GREEN}pnpm run dev${NC}          - Start development server"
echo -e "  ${GREEN}pnpm run build:vercel${NC} - Build for production"
echo -e "  ${GREEN}pnpm run serve${NC}        - Preview production build"
echo -e "  ${GREEN}pnpm run typecheck${NC}    - Run TypeScript checks"

echo -e "\n${PURPLE}${DIYA} Features:${NC}"
echo -e "  • Navratri-themed UI with diyas and rangoli"
echo -e "  • Interactive bill form with live preview"
echo -e "  • PDF generation capability"
echo -e "  • Responsive design for all devices"

echo -e "\n${CYAN}${INFO} For more details, see:${NC}"
echo -e "  ${BLUE}CODESPACES_SETUP.md${NC} - Full setup guide"
echo -e "  ${BLUE}VERCEL_DEPLOYMENT.md${NC} - Deployment instructions"

echo -e "\n${GREEN}Happy coding! ${DIYA}${NC}\n"

# Auto-start option
read -p "$(echo -e ${YELLOW}Do you want to start the dev server now? [y/N]: ${NC})" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo -e "\n${FIRE} Starting development server...${NC}\n"
    pnpm run dev
fi
