#!/bin/bash

# Full Local Development Setup
echo "🔧 Setting up Local Development Environment..."
echo "=========================================="

# Check current CMS mode
echo "📊 Checking current CMS mode..."
CURRENT_MODE=$(./switch-cms-mode.sh status 2>/dev/null)
echo "Current mode: $CURRENT_MODE"

# Switch to local if not already
if [[ ! "$CURRENT_MODE" =~ "LOCAL" ]]; then
    echo ""
    echo "🔄 Switching to local development mode..."
    ./switch-cms-mode.sh local
    echo ""
fi

# Check if Jekyll is running
echo "🔍 Checking Jekyll server status..."
if pgrep -f "jekyll serve" > /dev/null; then
    echo "✅ Jekyll server is already running"
    JEKYLL_RUNNING=true
else
    echo "⏳ Jekyll server not running - starting it now..."
    JEKYLL_RUNNING=false
fi

# Check if Decap CMS server is running
echo "🔍 Checking Decap CMS server status..."
if pgrep -f "decap-server" > /dev/null; then
    echo "✅ Decap CMS server is already running"
    DECAP_RUNNING=true
else
    echo "⏳ Decap CMS server not running - will start it"
    DECAP_RUNNING=false
fi

echo ""
echo "🎯 Development Setup Plan:"
if [ "$JEKYLL_RUNNING" = false ]; then
    echo "   1. Start Jekyll server (http://localhost:4000/)"
fi
if [ "$DECAP_RUNNING" = false ]; then
    echo "   2. Start Decap CMS server (port 8081)"
fi
echo "   3. Access CMS at: http://localhost:4000/admin/"
echo ""

# Start Jekyll first if not running
if [ "$JEKYLL_RUNNING" = false ]; then
    echo "� Starting Jekyll server..."
    bundle exec jekyll serve --livereload --host 0.0.0.0 &
    JEKYLL_PID=$!
    echo "Jekyll started with PID: $JEKYLL_PID"
    sleep 3
fi

# Start Decap CMS server if not running
if [ "$DECAP_RUNNING" = false ]; then
    echo "🚀 Starting Decap CMS server..."
    npx decap-server &
    DECAP_PID=$!
    echo "Decap CMS server started with PID: $DECAP_PID"
    sleep 2
fi

echo ""
echo "✅ Development environment ready!"
echo "🌐 Website: http://localhost:4000/"
echo "📝 CMS: http://localhost:4000/admin/"
echo ""
echo "⏹️  Press Ctrl+C to stop monitoring (servers will continue running)"
echo "🔧 To stop all servers: pkill -f 'jekyll serve' && pkill -f 'decap-server'"
echo "=========================================="

# Keep script running to show it's active
while true; do
    sleep 60
    echo "💓 Development servers still running... $(date)"
done
