# Contributing to KeyFinder

Thank you for your interest in contributing to KeyFinder!

## How to Contribute

### Adding New Secret Patterns

1. Edit `js/patterns.js`
2. Add a new pattern object:
```javascript
{
  name: "Provider Name",
  re: /pattern/g,
  severity: "critical|high|medium|low",
  confidence: "high|medium|low",
  provider: "Provider Name"
}
```
3. Test the extension locally

### Building for Different Browsers

```bash
# Build all browsers
npm run build

# Build specific browser
npm run build:chrome
npm run build:firefox
npm run build:edge
npm run build:safari
```

### Testing

1. Load unpacked extension in browser
2. Visit sites with test secrets
3. Verify detection works correctly

## Pull Request Guidelines

- Follow existing code style
- Test on all supported browsers
- Update README if adding new features
- Keep patterns focused on real secrets

## License

By contributing, you agree that your contributions will be licensed under MIT License.
