# Repository Structure

This Jekyll site is organized to clearly separate content from code:

## 📄 Content & Pages
```
├── index.html              # Main homepage (content-focused)
├── _data/
│   └── content.yml         # All site text content
└── assets/images/          # Images and media files
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

### ✏️ Text Content
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
