# VS Code Integration for Decap CMS

## 🚀 Available VS Code Features

### Launch Configurations (F5 or Run and Debug panel)
- **🔄 Switch CMS to Local** - Switch to local development mode
- **🌐 Switch CMS to Live** - Switch to production mode  
- **📊 Check CMS Status** - Check current CMS mode
- **🚀 Start Decap CMS Server** - Start local CMS proxy server

### Tasks (Ctrl+Shift+P → "Tasks: Run Task")
- **Jekyll Serve** - Start Jekyll development server
- **Decap CMS Server** - Start Decap CMS proxy server  
- **CMS Switch to Local** - Switch to local mode
- **CMS Switch to Live** - Switch to production mode
- **CMS Check Status** - Check current mode
- **Start Local Development** - Switch to local + start servers

### Keyboard Shortcuts (Custom)
- `Ctrl+Shift+L` - Switch to Local mode
- `Ctrl+Shift+P` - Switch to Live mode  
- `Ctrl+Shift+S` - Check CMS Status
- `Ctrl+Shift+D` - Start Local Development

## 🔧 Quick Development Workflow

### Method 1: Using Launch Configurations
1. Open **Run and Debug** panel (Ctrl+Shift+D)
2. Select "🔄 Switch CMS to Local"
3. Press F5 to run
4. Select "🚀 Start Decap CMS Server" 
5. Press F5 to run
6. Access CMS at http://localhost:4000/admin/

### Method 2: Using Command Palette
1. Press `Ctrl+Shift+P`
2. Type "Tasks: Run Task"
3. Select "Start Local Development"
4. This will automatically switch to local mode

### Method 3: Using Keyboard Shortcuts
1. Press `Ctrl+Shift+L` to switch to local
2. Press `Ctrl+Shift+D` to start development servers

## 📁 VS Code Files Created
- `.vscode/launch.json` - Debug/Run configurations
- `.vscode/tasks.json` - Task definitions
- `.vscode/settings.json` - Workspace settings
- `.vscode/keybindings.json` - Custom keyboard shortcuts

## 💡 Tips
- Jekyll server runs in background automatically via existing task
- Decap CMS server needs to be started manually for local development
- Check status anytime with the status checker
- All configurations work with the existing script system
