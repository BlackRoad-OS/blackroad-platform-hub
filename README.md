# ⬛ BlackRoad Platform Hub

> **Unified Infrastructure Monitoring for Cloudflare + Vercel**

BlackRoad Platform Hub v3.0 is a Cloudflare Workers application that provides real-time monitoring and management of distributed infrastructure across multiple platforms.

## 🚀 Features

- **Multi-Platform Monitoring**: Track Cloudflare Workers, Vercel projects, and GitHub organizations
- **Real-Time Dashboard**: Interactive web interface for infrastructure visibility
- **RESTful API**: Comprehensive API endpoints for programmatic access
- **AI Agent Integration**: Built for 1,000+ LangGraph + CrewAI agents
- **Zero Downtime**: Deployed on Cloudflare's global edge network

## 📋 Platform Inventory

- **Cloudflare Workers**: 83 active workers
- **Vercel Projects**: 34 deployed projects
- **GitHub Organizations**: 15 organizations (primary: BlackRoad-OS)
- **Domains**: 19 domains managed via Cloudflare DNS
- **AI Agents**: 1,000 agents across LangGraph + CrewAI frameworks

## 🛠️ Tech Stack

- **Runtime**: Cloudflare Workers
- **Language**: JavaScript (ES Modules)
- **Deployment**: Wrangler CLI + GitHub Actions
- **APIs**: Cloudflare API, Vercel API

## 📦 Installation

### Prerequisites

- Node.js 18+ (for Wrangler CLI)
- Cloudflare account with Workers enabled
- API tokens for Cloudflare and Vercel (optional, for full functionality)

### Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/BlackRoad-OS/blackroad-platform-hub.git
   cd blackroad-platform-hub
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Configure environment variables**
   
   Create a `.dev.vars` file for local development:
   ```bash
   CLOUDFLARE_API_TOKEN=your_cloudflare_token
   VERCEL_TOKEN=your_vercel_token
   ```

4. **Run locally**
   ```bash
   npm run dev
   ```
   
   The dashboard will be available at `http://localhost:8787/platform`

## 🌐 API Endpoints

### Health Check
```
GET /api/platform/health
```
Returns platform status and version information.

**Response:**
```json
{
  "status": "operational",
  "version": "3.0.0",
  "timestamp": "2026-01-26T13:54:00.000Z"
}
```

### Platform Inventory
```
GET /api/platform/inventory
```
Returns summary of all platform resources.

**Response:**
```json
{
  "cloudflare": {
    "workers": 83,
    "pages": 0,
    "domains": 19
  },
  "vercel": {
    "projects": 34,
    "deployments": "active"
  },
  "github": {
    "organizations": 15,
    "primaryOrg": "BlackRoad-OS"
  },
  "agents": {
    "total": 1000,
    "framework": "LangGraph + CrewAI"
  }
}
```

### Cloudflare Workers
```
GET /api/platform/workers
```
Returns detailed list of Cloudflare Workers.

**Response:**
```json
{
  "total": 83,
  "workers": [
    {
      "name": "worker-name",
      "modified": "2026-01-26T12:00:00.000Z",
      "created": "2025-12-01T10:00:00.000Z"
    }
  ]
}
```

### Vercel Projects
```
GET /api/platform/vercel
```
Returns detailed list of Vercel projects.

**Response:**
```json
{
  "total": 34,
  "projects": [
    {
      "name": "project-name",
      "framework": "nextjs",
      "updated": "2026-01-25T15:30:00.000Z"
    }
  ]
}
```

### Dashboard
```
GET /platform
GET /platform/
```
Returns interactive HTML dashboard with real-time monitoring.

## 🚢 Deployment

### Automatic Deployment (Recommended)

The project automatically deploys to Cloudflare Workers when code is pushed to the `main` branch via GitHub Actions.

**Required GitHub Secrets:**
- `CLOUDFLARE_API_TOKEN`: Your Cloudflare API token
- `CLOUDFLARE_ACCOUNT_ID`: Your Cloudflare account ID

### Manual Deployment

```bash
npm run deploy
```

## 🔧 Development

### Scripts

- `npm run dev` - Start local development server with Wrangler
- `npm run deploy` - Deploy to Cloudflare Workers
- `npm run tail` - Tail Worker logs in real-time

### Project Structure

```
blackroad-platform-hub/
├── src/
│   └── index.js          # Main Worker entry point
├── .github/
│   └── workflows/
│       └── deploy.yml    # GitHub Actions deployment
├── .gitignore            # Git ignore rules
├── package.json          # Project metadata and scripts
├── wrangler.toml         # Cloudflare Workers configuration
└── README.md             # This file
```

### Configuration

Edit `wrangler.toml` to configure:
- Worker name
- Account ID
- Environment variables
- Compatibility date

## 🔐 Security

- API tokens are stored as environment variables (never committed)
- CORS headers configured for cross-origin requests
- Production account ID: `848cf0b18d51e0170e0d1537aec3505a`

## 📝 License

MIT License - see LICENSE file for details

## 🤝 Contributing

Contributions are welcome! Please see CONTRIBUTING.md for guidelines.

## 📞 Support

- **GitHub**: [BlackRoad-OS/blackroad-platform-hub](https://github.com/BlackRoad-OS/blackroad-platform-hub)
- **Organization**: [BlackRoad-OS](https://github.com/BlackRoad-OS)

## 🎯 Roadmap

- [ ] Add support for GitHub API integration
- [ ] Implement detailed analytics and metrics
- [ ] Add alerting and notification system
- [ ] Support for additional platforms (AWS, Azure, GCP)
- [ ] Historical data tracking and trends

---

Built with ❤️ by the BlackRoad team
