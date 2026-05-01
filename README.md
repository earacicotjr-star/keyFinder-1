# KeyFinder

<p align="center">
  <img width="128" height="128" alt="KeyFinder logo" src="https://raw.githubusercontent.com/momenbasel/keyFinder/master/icons/icon128.png">
</p>

<h1 align="center">KeyFinder</h1>

<p align="center">
  <strong>Passive API key and secret discovery for Chrome, Firefox, Edge, and Safari</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Manifest-V3-blue"/>
  <a href="https://chromewebstore.google.com/detail/keyfinder/oogbljkilkfgdlkbmajlolpanilnnkim"><img src="https://img.shields.io/badge/Chrome-Extension-green"/></a>
  <a href="https://addons.mozilla.org/en-US/firefox/addon/keyfinder-original/"><img src="https://img.shields.io/badge/Firefox-Add--on-orange"/></a>
  <img src="https://img.shields.io/badge/Edge-Supported-blue"/>
  <img src="https://img.shields.io/badge/Safari-Web%20Extension-purple"/>
  <img src="https://img.shields.io/github/license/momenbasel/keyFinder"/>
  <img src="https://img.shields.io/github/v/release/momenbasel/keyFinder"/>
  <img src="https://img.shields.io/github/downloads/momenbasel/keyFinder/total.svg"/>
</p>

KeyFinder is a browser extension for Chrome, Firefox, Edge, and Safari that passively scans every page you visit for leaked API keys, tokens, secrets, and credentials. It runs silently in the background with zero configuration required.

## Supported Browsers

| Browser | Status | Manifest |
|---------|--------|----------|
| Chrome | ✅ Supported | `manifest.json` |
| Firefox | ✅ Supported | `manifest.firefox.json` |
| Edge | ✅ Supported | `manifest.edge.json` |
| Safari (macOS/iOS) | ✅ Supported | `manifest.safari.json` |
| Edge Mobile | ❌ Not Supported | N/A |
| Safari iOS (older) | ⚠️ See notes | `manifest.safari.json` |

## What It Detects

KeyFinder ships with (**80+ detection patterns**) covering secrets from:

| Category | Providers |
|----------|-----------|
| **Cloud** | AWS (Access Keys, Secret Keys, Session Tokens, Cognito), Google Cloud (API Keys, OAuth, Service Accounts), Azure (Storage Keys, SAS Tokens, Connection Strings) |
| **Source Control** | GitHub (PATs, OAuth, Fine-grained tokens), GitLab (PATs, Pipelines, Runner tokens), Bitbucket |
| **Payments** | Stripe (Secret, Publishable, Restricted, Webhook), PayPal Brains, Square |
| **Communication** | Slack (Bot, User, App tokens, Webhooks), Discord (Bot tokens, Webhooks), Telegram, Twilio, SendGrid |
| **AI / ML** | OpenAI, Anthropic, HuggingFace, Replicate |
| **Databases** | MongoDB, PostgreSQL, MySQL, Redis connection strings |
| **SaaS** | Shopify, Sendy, New Relic, Linear, Notion, Algolia, Mapbox |
| **Infrastructure** | HashiCorp Vault, Terraform, Docker Hub, NPM, Cloudflare, DigitalOcean, Grafana |
| **Crypto** | RSA, EC, OpenSSH, DSA private keys |
| **Generic** | JWTs, Bearer tokens, Basic Auth, API key assignments, credential URLs, high-entropy strings |


## Installation

### Chrome
- [Install from Chrome Web Store](https://chromewebstore.google.com/detail/keyfinder/oogbljkilkfgdlkbmajlolpanilnnkim)


### Firefox
- [Install from Firefox Add-ons](https://addons.mozilla.org/en-US/firefox/addon/keyfinder-original/)

### Edge
1. Clone the repository: `git clone https://github.com/earacicotjr-star/keyFinder-1.git`
2. Go to `edge://extensions`
3. Enable **Developer mode**
4. Click **Load unpacked** and select the `keyFinder-1` folder
5. Use `manifest.edge.json` as the manifest

### Safari (macOS)
1. Clone the repository: `git clone https://github.com/earacicotjr-star/keyFinder-1.git`
2. Open Safari > Preferences > Advanced > Show Develop menu
3. Develop > Safari Extensions Settings
4. Click **+** and select the `keyFinder-1` folder
5. Enable the extension in Safari preferences

### Safari (iOS)
1. Open Safari on your iOS device
2. Go to Settings > Safari > Extensions
3. Enable KeyFinder

## Usage

1. **Install** the extension
2. **Browse** the web normally — KeyFinder scans every page in the background
3. Click the **extension icon** to see stats and manage keywords
4. Click **View Findings** to open the full results dashboard
5. **Filter** by severity, provider, or type
6. **Export** findings as JSON or CSV for reporting

## Architecture


```
keyFinder/
  manifest.json              # Chrome MV3 manifest
  manifest.firefox.json     # Firefox MV3 manifest
  manifest.edge.json        # Edge MV3 manifest
  manifest.safari.json     # Safari Web Extension manifest
  popup.html                # Extension popup UI
  results.html              # Findings dashboard
  js/
    background.js           # Service worker - storage and message handling
    patterns.js             # 80+ secret detection regex patterns
    content.js              # Page scanner - DOM, scripts, network interception
    interceptor.js         # XHR/Fetch hooking and window global scanning
    popup.js                # Popup logic
    results.js             # Dashboard logic with filtering and export
  css/
    popup.css               # Popup styles
    results.css            # Dashboard styles
  icons/
    icon16.png
    icon48.png
    icon128.png
  scripts/
    build.sh               # Build Chrome and Firefox zip packages
```

## Disclaimer


This tool is intended for **security research and authorized testing only**. Use it to identify leaked secrets on your own applications or ones you have permission to test.

## License

MIT License - See LICENSE file for details.
