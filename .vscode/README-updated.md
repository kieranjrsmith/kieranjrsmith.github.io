# VS Code Integration for Decap CMS

## 🚀 Available VS Code Features

### Launch Configurations (F5 or Run and Debug panel)
- **🔄 Switch CMS to Local** - Switch to local development mode
- **🌐 Switch CMS to Live** - Switch to production mode  
- **📊 Check CMS Status** - Check current CMS mode
- **🚀 Start Jekyll Server** - Start Jekyll development server (smart launcher)
- **🔧 Start Decap CMS Server** - Start Decap CMS proxy server (smart launcher)
- **🔧 Full Local Development Setup** - Complete setup with both servers

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

## 🔧 Smart Launchers

### Jekyll Server Launcher
- **Dependency check**: Verifies Gemfile exists and runs bundle install
- **Environment info**: Shows Ruby and Bundle versions
- **LiveReload enabled**: Automatic browser refreshing on file changes
- **Status feedback**: Shows server URLs and startup progress

### Decap CMS Server Launcher
- **Automatic mode detection**: Switches to local mode if needed
- **Port conflict resolution**: Uses alternative port if 8081 is busy
- **Process detection**: Detects if server is already running
- **Status feedback**: Shows node version, working directory, access URLs

### Full Development Setup
- **Intelligent startup**: Detects what's already running
- **Background processes**: Starts both servers in background
- **Status monitoring**: Shows periodic status updates
- **Easy shutdown**: Provides commands to stop all servers

## 🚀 Quick Development Workflow

### Method 1: Individual Server Control
1. Press `F5` → Select "🚀 Start Jekyll Server"
2. Press `F5` → Select "🔧 Start Decap CMS Server"  
3. Access CMS at http://localhost:4000/admin/

### Method 2: Full Setup (Recommended)
1. Press `F5` → Select "🔧 Full Local Development Setup"
2. Both servers start automatically
3. Monitors and reports status

### Method 3: Using Tasks
1. Ctrl+Shift+P → "Tasks: Run Task"
2. Select "Jekyll Serve" or "Decap CMS Server"

## 🔍 Troubleshooting Features

### Jekyll Server Issues
- Automatically runs `bundle install` if needed
- Checks for Gemfile existence
- Shows Ruby and Bundle version info
- Provides clear error messages

### Port Conflicts
- Decap launcher automatically detects port 8081 conflicts
- Uses alternative port 8082 if needed
- Updates config accordingly

### Process Detection
- Checks for existing Jekyll and Decap CMS processes
- Prevents duplicate server instances
- Provides clear status messages

### Mode Verification
- Automatically detects current CMS mode
- Switches to local mode when needed
- Preserves manual configuration choices

## 📁 VS Code Files
- `.vscode/launch.json` - Debug/Run configurations
- `.vscode/tasks.json` - Task definitions
- `.vscode/settings.json` - Workspace settings
- `.vscode/keybindings.json` - Custom keyboard shortcuts
- `.vscode/start-jekyll-server.sh` - Smart Jekyll launcher
- `.vscode/start-decap-server.sh` - Smart Decap CMS launcher
- `.vscode/start-full-dev.sh` - Complete development setup

## 💡 Advanced Tips
- **Primary server**: Jekyll (serves the site and admin interface)
- **Secondary server**: Decap CMS (provides editing functionality)
- **Start order**: Jekyll first, then Decap CMS for best results
- **Full setup**: Handles startup order and dependencies automatically
- **URL access**: All launchers provide clickable URLs for easy access
