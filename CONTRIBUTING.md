# 🤝 Contributing to Hindi Bill Note Sheet Generator

First off, thank you for considering contributing to this project! 🎉

This project was created to help PWD Rajasthan Electric Division streamline their bill note sheet generation process. Every contribution helps make this tool better for everyone.

## 🌟 Ways to Contribute

### 1. Report Bugs 🐛

Found a bug? Help us fix it!

- Check if the bug is already reported in [Issues](https://github.com/CRAJKUMARSINGH/TEMP/issues)
- If not, create a new issue with:
  - Clear title and description
  - Steps to reproduce
  - Expected vs actual behavior
  - Screenshots if applicable
  - Your environment (browser, OS)

### 2. Suggest Features 💡

Have an idea to improve the app?

- Open an issue with the `enhancement` label
- Describe the feature and why it would be useful
- Include mockups or examples if possible

### 3. Improve Documentation 📚

Documentation is crucial!

- Fix typos or unclear instructions
- Add examples or screenshots
- Translate documentation
- Create video tutorials

### 4. Submit Code 💻

Ready to code? Awesome!

- Fix bugs
- Implement new features
- Improve performance
- Enhance UI/UX
- Add tests

## 🚀 Getting Started

### Prerequisites

- Node.js 18 or higher
- pnpm (recommended) or npm
- Git
- GitHub account

### Setup Development Environment

1. **Fork the repository**
   - Click the "Fork" button on GitHub
   - Clone your fork:
     ```bash
     git clone https://github.com/YOUR_USERNAME/TEMP.git
     cd TEMP
     ```

2. **Install dependencies**
   ```bash
   npm install -g pnpm
   pnpm install
   ```

3. **Create a branch**
   ```bash
   git checkout -b feature/your-feature-name
   # or
   git checkout -b fix/your-bug-fix
   ```

4. **Start development server**
   ```bash
   cd artifacts/hindi-bill
   pnpm run dev
   ```

5. **Make your changes**
   - Write clean, readable code
   - Follow existing code style
   - Add comments for complex logic
   - Test your changes thoroughly

6. **Commit your changes**
   ```bash
   git add .
   git commit -m "feat: add amazing feature"
   # or
   git commit -m "fix: resolve issue with PDF generation"
   ```

7. **Push to your fork**
   ```bash
   git push origin feature/your-feature-name
   ```

8. **Create Pull Request**
   - Go to your fork on GitHub
   - Click "New Pull Request"
   - Fill in the PR template
   - Wait for review

## 📝 Commit Message Guidelines

We follow [Conventional Commits](https://www.conventionalcommits.org/):

- `feat:` - New feature
- `fix:` - Bug fix
- `docs:` - Documentation changes
- `style:` - Code style changes (formatting, etc.)
- `refactor:` - Code refactoring
- `test:` - Adding or updating tests
- `chore:` - Maintenance tasks

Examples:
```
feat: add contractor search functionality
fix: resolve PDF generation issue on mobile
docs: update installation instructions
style: format code with prettier
refactor: simplify form validation logic
```

## 🎨 Code Style Guidelines

### TypeScript/React

- Use TypeScript for type safety
- Use functional components with hooks
- Keep components small and focused
- Use meaningful variable names
- Add JSDoc comments for complex functions

Example:
```typescript
/**
 * Calculates the net payable amount after deductions
 * @param billAmount - Total bill amount
 * @param deductions - Object containing all deduction amounts
 * @returns Net payable amount
 */
const calculateNetPayable = (
  billAmount: number,
  deductions: Deductions
): number => {
  // Implementation
};
```

### CSS/Tailwind

- Use Tailwind utility classes
- Keep custom CSS minimal
- Use consistent spacing
- Follow mobile-first approach

### File Organization

```
src/
├── components/       # Reusable UI components
├── pages/           # Page components
├── hooks/           # Custom React hooks
├── utils/           # Utility functions
├── types/           # TypeScript types
└── constants/       # Constants and configs
```

## 🧪 Testing

Before submitting a PR:

1. **Type checking**
   ```bash
   pnpm run typecheck
   ```

2. **Build test**
   ```bash
   pnpm run build
   ```

3. **Manual testing**
   - Test all form inputs
   - Verify live preview updates
   - Test PDF generation
   - Check responsive design
   - Test in different browsers

## 📋 Pull Request Checklist

Before submitting your PR, ensure:

- [ ] Code follows project style guidelines
- [ ] All tests pass
- [ ] TypeScript compilation succeeds
- [ ] Changes are documented
- [ ] Commit messages follow conventions
- [ ] PR description is clear and complete
- [ ] Screenshots included (for UI changes)
- [ ] No console errors or warnings
- [ ] Tested on multiple browsers
- [ ] Responsive design verified

## 🎯 Priority Areas

We especially welcome contributions in these areas:

### High Priority
- 🐛 Bug fixes
- 📱 Mobile responsiveness improvements
- ♿ Accessibility enhancements
- 🌐 Localization (Hindi translations)
- 📊 Performance optimizations

### Medium Priority
- ✨ New features (with discussion first)
- 🎨 UI/UX improvements
- 📚 Documentation improvements
- 🧪 Test coverage

### Nice to Have
- 🎥 Video tutorials
- 📖 Blog posts
- 🎨 Theme customization
- 🔌 Plugin system

## 💬 Communication

- **Questions?** Open a [Discussion](https://github.com/CRAJKUMARSINGH/TEMP/discussions)
- **Bug reports?** Create an [Issue](https://github.com/CRAJKUMARSINGH/TEMP/issues)
- **Feature ideas?** Start a [Discussion](https://github.com/CRAJKUMARSINGH/TEMP/discussions)

## 🏆 Recognition

Contributors will be:
- Listed in the README
- Mentioned in release notes
- Given credit in commit history
- Appreciated in the community! 🎉

## 📜 Code of Conduct

### Our Pledge

We are committed to providing a welcoming and inspiring community for all.

### Our Standards

- ✅ Be respectful and inclusive
- ✅ Welcome newcomers
- ✅ Accept constructive criticism
- ✅ Focus on what's best for the community
- ✅ Show empathy towards others

- ❌ No harassment or trolling
- ❌ No personal attacks
- ❌ No spam or self-promotion
- ❌ No inappropriate content

## 📄 License

By contributing, you agree that your contributions will be licensed under the MIT License.

## 🙏 Thank You!

Every contribution, no matter how small, makes a difference. Thank you for helping make this project better!

---

**Questions?** Feel free to reach out by creating an issue or discussion.

**Happy Contributing!** 🚀🪔
