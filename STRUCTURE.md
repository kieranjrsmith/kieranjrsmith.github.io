# Repository Structure

This Jekyll site is organized to clearly separate content from code:

## 📄 Content & Pages
```
├── index.html              # Main homepage (content-focused)
├── _data/
│   └── content.yml         # All site text content
├── assets/images/          # Images and media files
└── admin/                  # Decap CMS admin interface
    ├── index.html          # Production CMS interface
    ├── local.html          # Development CMS interface  
    └── config.yml          # CMS configuration
```

## 🛠️ Code & Configuration
```
├── _config.yml             # Jekyll site configuration
├── _layouts/
│   └── default.html        # Page template
├── _includes/              # Reusable components
│   ├── banner.html
│   ├── text-section.html
│   └── list-section.html
├── assets/css/
│   └── main.scss           # Site styling
├── Gemfile                 # Ruby dependencies
└── robots.txt              # SEO configuration
```

## 🚀 Development & Deployment
```
├── .devcontainer/          # VS Code dev container config
├── .github/workflows/      # GitHub Actions
├── .vscode/               # VS Code settings
├── _site/                 # Generated site (ignored)
└── README.md              # Documentation
```

## 📦 Archive
```
└── old_data/              # Original files (ignored in git)
```

## How to Edit Content

### 🎯 **NEW: Web-Based Admin Interface**
Visit `/admin/` on your site to use the Decap CMS interface:
- **Local Development**: `http://localhost:4001/admin/local.html`
- **Production**: `https://kieranjrsmith.github.io/admin/` (requires GitHub authentication)
- Edit content through forms instead of raw YAML
- Preview changes before publishing
- Manage images through web interface

### ✏️ Text Content (Traditional Method)
Edit `_data/content.yml` to change:
- Introduction text
- Service descriptions
- Experience details
- Qualifications list
- Contact information

### 🎨 Styling
Edit `assets/css/main.scss` for visual changes

### 🔧 Site Configuration
Edit `_config.yml` for:
- Site title and description
- Contact email
- SEO settings
