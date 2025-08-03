# Decap CMS Setup Guide

## Quick Mode Switching

### Method 1: Using Scripts (Recommended)
```bash
# Switch to local development
npm run cms:local
# or
./switch-cms-mode.sh local

# Switch to live/production
npm run cms:live
# or  
./switch-cms-mode.sh live

# Check current mode
npm run cms:status
```

### Method 2: Manual Config Edit
Edit `admin/config.yml` and uncomment/comment the appropriate backend:

**For LOCAL development:**
```yaml
# Comment out this section:
# backend:
#   name: github
#   repo: kieranjrsmith/kieranjrsmith.github.io
#   branch: main

# Uncomment this section:
backend:
  name: proxy
  proxy_url: http://localhost:8081/api/v1
  branch: main
```

**For LIVE production:**
```yaml
# Uncomment this section:
backend:
  name: github
  repo: kieranjrsmith/kieranjrsmith.github.io
  branch: main

# Comment out this section:
# backend:
#   name: proxy
#   proxy_url: http://localhost:8081/api/v1
#   branch: main
```

## Development Workflow

### Local Development Setup
1. Switch to local mode: `npm run cms:local`
2. Start Jekyll: `npm run dev:jekyll` 
3. Start Decap server: `npm run dev:cms` (in another terminal)
4. Access CMS: http://localhost:4000/admin/

### Production Deployment
1. Switch to live mode: `npm run cms:live`
2. Commit and push to GitHub
3. Access CMS: https://kieranjrsmith.github.io/admin/
4. Login with GitHub when prompted

## Available npm Scripts
- `npm run cms:local` - Switch to local development mode
- `npm run cms:live` - Switch to live production mode  
- `npm run cms:status` - Check current mode
- `npm run dev:cms` - Start Decap CMS local server
- `npm run dev:jekyll` - Start Jekyll development server
- `npm run dev` - Start Jekyll with instructions for CMS
