# Kieran Smith - English Tutor

A professional Jekyll-powered website for English tutoring services, hosted on GitHub Pages.

## About

This site provides information about professional English tutoring services for students preparing for:
- Scottish Nat 5, Higher, and Advanced Higher exams
- GCSE and A-Level English exams
- Special educational needs support

## 📁 Repository Structure

The repository is organized to clearly separate content from code:

- **Content**: `_data/content.yml` contains all text content
- **Pages**: `index.html` and other content pages
- **Code**: `_layouts/`, `_includes/`, `assets/` contain templates and styling
- **Config**: `_config.yml`, `Gemfile` for site configuration

See [STRUCTURE.md](STRUCTURE.md) for detailed organization.

## Development

This site is built with Jekyll and includes a dev container for easy development.

### Using the Dev Container

1. Open the project in VS Code
2. Install the "Dev Containers" extension if not already installed
3. Press `Ctrl+Shift+P` and select "Dev Containers: Reopen in Container"
4. The container will build automatically and install all dependencies
5. Jekyll will start serving the site at `http://localhost:4000` with live reload

### Manual Development

If you prefer to develop without the dev container:

```bash
# Install dependencies
bundle install

# Serve the site locally
bundle exec jekyll serve --livereload

# Build for production
bundle exec jekyll build
```

## Editing Content

### 🎯 **Easy Web Interface (Recommended)**
Use the Decap CMS admin interface for user-friendly content editing:

**Local Development:**
- Visit: `http://localhost:4001/admin/local.html`
- Edit content through web forms
- No YAML knowledge required

**Production:**
- Visit: `https://kieranjrsmith.github.io/admin/`
- Login with GitHub account
- Make changes and publish directly

### 📝 **Advanced: Direct File Editing**
For developers or advanced users:

#### Quick Content Changes
Edit `_data/content.yml` to change text content without touching HTML/CSS.

#### Styling Changes
Edit `assets/css/main.scss` for visual modifications.

#### Site Configuration
Edit `_config.yml` for site-wide settings like title, email, SEO.

## Deployment

This site is automatically deployed to GitHub Pages when changes are pushed to the main branch.

## Features

- ✅ **Clean Structure** - Content separated from code
- ✅ **Easy Editing** - Web-based CMS interface with Decap CMS
- ✅ **No-Code Content Management** - Edit through forms, not files
- ✅ **Traditional Editing** - Direct YAML file editing for developers
- ✅ **Responsive Design** - Works on all device sizes
- ✅ **SEO Optimized** - Meta tags, sitemap, structured data
- ✅ **Dev Container** - Complete development environment
- ✅ **Live Reload** - Automatic refresh during development
- ✅ **Media Management** - Upload and manage images through web interface

## Contact

For tutoring inquiries, please contact:
📧 kieransmithtutor@gmail.com
Available under the MIT License.