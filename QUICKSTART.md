# KeyFinder

Passive API key and secret discovery for Chrome, Firefox, Edge, and Safari.

## Quick Start

```bash
# Clone
git clone https://github.com/earacicotjr-star/keyFinder-1.git
cd keyFinder-1

# Build all browsers
bash scripts/build.sh

# Or use npm
npm run build
```

## Supported Browsers

| Browser | Manifest | Install |
|---------|----------|---------|
| Chrome | `manifest.json` | [Web Store](https://chromewebstore.google.com/detail/keyfinder/oogbljkilkfgdlkbmajlolpanilnnkim) |
| Firefox | `manifest.firefox.json` | [Add-ons](https://addons.mozilla.org/en-US/firefox/addon/keyfinder-original/) |
| Edge | `manifest.edge.json` | Load unpacked |
| Safari | `manifest.safari.json` | Safari Extensions Settings |

## Development

```bash
# Edit manifest.json for your target browser
# Then load as unpacked extension
```

## License

MIT