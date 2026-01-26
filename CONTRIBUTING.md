# Contributing to BlackRoad Platform Hub

Thank you for your interest in contributing to the BlackRoad Platform Hub! This document provides guidelines and instructions for contributing to the project.

## 🌟 How to Contribute

### Reporting Issues

1. **Check existing issues** to avoid duplicates
2. **Use the issue template** if available
3. **Provide detailed information**:
   - Clear description of the issue
   - Steps to reproduce
   - Expected vs actual behavior
   - Environment details (OS, Node version, etc.)
   - Screenshots or logs if applicable

### Suggesting Enhancements

1. **Open a new issue** with the enhancement proposal
2. **Describe the use case** and benefits
3. **Provide examples** of how it would work
4. **Consider alternatives** and discuss trade-offs

### Pull Requests

1. **Fork the repository** and create a new branch
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make your changes**:
   - Follow the existing code style
   - Write clear, concise commit messages
   - Keep changes focused and minimal
   - Update documentation as needed

3. **Test your changes**:
   ```bash
   npm run dev
   ```
   - Test locally using Wrangler
   - Verify all API endpoints work
   - Check the dashboard UI functionality

4. **Submit the pull request**:
   - Provide a clear title and description
   - Reference any related issues
   - Include screenshots for UI changes
   - Ensure CI checks pass

## 📋 Code Style Guidelines

### JavaScript

- Use ES6+ features and modules
- Use `const` and `let` instead of `var`
- Use arrow functions where appropriate
- Add JSDoc comments for functions
- Keep functions small and focused
- Use meaningful variable names

### Example

```javascript
/**
 * Fetch Cloudflare Workers data
 * @param {Object} env - Environment variables
 * @returns {Promise<Object>} Workers data
 */
async function fetchCloudflareWorkers(env) {
  // Implementation
}
```

### Formatting

- Indent with 2 spaces
- Use semicolons
- Single quotes for strings (except in HTML)
- Add trailing commas in multi-line objects/arrays

## 🔍 Testing

### Local Testing

1. **Start the development server**:
   ```bash
   npm run dev
   ```

2. **Test API endpoints**:
   ```bash
   curl http://localhost:8787/api/platform/health
   curl http://localhost:8787/api/platform/inventory
   ```

3. **Test the dashboard**:
   - Open `http://localhost:8787/platform` in a browser
   - Verify all sections load correctly
   - Test refresh functionality

### Manual Testing Checklist

- [ ] Health endpoint returns correct status
- [ ] Inventory endpoint returns expected data
- [ ] Workers endpoint fetches Cloudflare data (with token)
- [ ] Vercel endpoint fetches project data (with token)
- [ ] Dashboard renders correctly
- [ ] Dashboard auto-refresh works
- [ ] CORS headers are set correctly
- [ ] Error handling works properly

## 📦 Development Setup

### Prerequisites

- Node.js 18 or higher
- npm or yarn
- Cloudflare account (for deployment)
- Git

### Initial Setup

```bash
# Clone your fork
git clone https://github.com/YOUR_USERNAME/blackroad-platform-hub.git
cd blackroad-platform-hub

# Install dependencies
npm install

# Create environment file
cp .env.example .dev.vars
# Edit .dev.vars with your API tokens

# Start development server
npm run dev
```

## 🔐 Security

### Handling Sensitive Data

- **Never commit API tokens or secrets**
- Use `.dev.vars` for local development
- Use GitHub Secrets for CI/CD
- Use Wrangler Secrets for production

### Reporting Security Issues

If you discover a security vulnerability, please email security@blackroad.io instead of using the issue tracker.

## 📝 Documentation

### Updating Documentation

- Update README.md for user-facing changes
- Add JSDoc comments for new functions
- Update API documentation for endpoint changes
- Include code examples where helpful

## 🎯 Development Workflow

### Branch Naming

- `feature/` - New features
- `fix/` - Bug fixes
- `docs/` - Documentation updates
- `refactor/` - Code refactoring
- `test/` - Test additions or updates

### Commit Messages

Use clear, descriptive commit messages:

```
feat: Add GitHub API integration
fix: Resolve CORS issue on workers endpoint
docs: Update API documentation
refactor: Simplify error handling
test: Add tests for inventory endpoint
```

### PR Process

1. Open PR against `main` branch
2. Ensure all CI checks pass
3. Wait for code review
4. Address review feedback
5. Maintainer will merge when approved

## ⚡ Quick Reference

### Common Commands

```bash
npm run dev       # Start local development
npm run deploy    # Deploy to Cloudflare
npm run tail      # View Worker logs
git status        # Check changed files
git diff          # See changes
```

### Useful Resources

- [Cloudflare Workers Docs](https://developers.cloudflare.com/workers/)
- [Wrangler CLI Docs](https://developers.cloudflare.com/workers/wrangler/)
- [JavaScript MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript)

## 🤝 Community

- Be respectful and inclusive
- Help others learn and grow
- Share knowledge and best practices
- Celebrate contributions of all sizes

## 📄 License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

Thank you for contributing to BlackRoad Platform Hub! 🚀
