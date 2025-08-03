# Auto-Production Commit Setup

This repository is configured to automatically ensure that only the **production version** of the Decap CMS configuration is committed to Git, while preserving your local development settings.

## 🎯 How It Works

### Automatic Methods (Recommended)

**Git Filter (Transparent)**
- Uses `.gitattributes` and Git filters
- Automatically converts config to production mode when committing
- Your working copy stays in local development mode
- Completely transparent - just commit normally!

**Pre/Post Commit Hooks (Manual Override)**
- Runs before each commit to ensure production config
- Automatically switches back to local mode after commit
- Provides visual feedback during the process

### Manual Methods (Backup)

**Safe Commit Scripts**
```bash
# Commit with automatic production switch
npm run commit:safe

# Commit and automatically switch back to local
npm run commit:and-back
```

## 🚀 Development Workflow

### Daily Development
```bash
# Work in local mode
npm run cms:local
npm run dev:cms        # Start CMS server
npm run dev:jekyll     # Start Jekyll

# Make your changes through CMS at http://localhost:4000/admin/
# Edit files normally
```

### Committing Changes
```bash
# Option 1: Normal Git workflow (automatic)
git add .
git commit -m "Update content"
git push

# Option 2: Using safe commit script
npm run commit:and-back -m "Update content"

# Option 3: Manual control
npm run cms:live       # Switch to production
git add .
git commit -m "Update content"  
npm run cms:local      # Switch back to local
git push
```

## 🔧 What Gets Committed

**Always Committed (Production Config):**
```yaml
backend:
  name: github
  repo: kieranjrsmith/kieranjrsmith.github.io
  branch: main
```

**Never Committed (Local Config):**
```yaml  
backend:
  name: proxy
  proxy_url: http://localhost:8081/api/v1
  branch: main
```

## 🛠️ Setup Files

- `.gitattributes` - Defines filter for admin/config.yml
- `.git/filters/cms-production-clean` - Converts to production on commit
- `.git/filters/cms-production-smudge` - Preserves local on checkout
- `.git/hooks/pre-commit` - Backup method using hooks
- `.git/hooks/post-commit` - Auto-switch back to local

## 🔍 Troubleshooting

**Check Current Mode:**
```bash
npm run cms:status
```

**Force Production Mode:**
```bash
npm run cms:live
```

**Reset to Local Mode:**
```bash
npm run cms:local
```

**Check Git Filter Status:**
```bash
git config --get filter.cms-production-filter.clean
git config --get filter.cms-production-filter.smudge
```

## ⚡ Benefits

- ✅ **Never accidentally commit local config**
- ✅ **Seamless development workflow**  
- ✅ **Production site always works**
- ✅ **No manual switching required**
- ✅ **Multiple safety mechanisms**
- ✅ **Works with any Git workflow**
