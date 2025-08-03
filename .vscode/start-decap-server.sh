#!/bin/bash

# Decap CMS Server Launcher for VS Code
echo "🚀 Starting Decap CMS Server..."
echo "📍 Working directory: $(pwd)"
echo "🔧 Node version: $(node --version)"
echo "📦 NPM version: $(npm --version)"
echo ""

# Check if we're in local mode
CURRENT_MODE=$(./switch-cms-mode.sh status 2>/dev/null | grep -o "LOCAL\|LIVE")

if [ "$CURRENT_MODE" != "LOCAL" ]; then
    echo "⚠️  Warning: CMS is not in LOCAL mode"
    echo "🔄 Switching to local development mode..."
    ./switch-cms-mode.sh local
    echo ""
fi

# Check if port 8081 is already in use
if lsof -i :8081 >/dev/null 2>&1; then
    echo "⚠️  Port 8081 is already in use"
    echo "🔍 Checking for existing Decap CMS server..."
    
    if pgrep -f "decap-server" >/dev/null; then
        echo "✅ Decap CMS server is already running"
        echo "📝 Access your CMS at: http://localhost:4000/admin/"
        echo "⏹️  To restart, kill existing process and run again"
        exit 0
    else
        echo "❌ Port 8081 is occupied by another process"
        echo "🔧 Attempting to use alternative port 8082..."
        PORT_ARG="--port 8082"
        PORT_NUM="8082"
    fi
else
    PORT_ARG=""
    PORT_NUM="8081"
fi

echo "🌐 Starting Decap CMS Server on port ${PORT_NUM}..."
echo "📝 Access your site at: http://localhost:4000/admin/"
echo "⏹️  Press Ctrl+C to stop the server"
echo ""

# Start the server
npx decap-server $PORT_ARG
