#!/bin/bash

# Jekyll Server Launcher for VS Code
echo "🚀 Starting Jekyll Development Server..."
echo "📍 Working directory: $(pwd)"
echo "💎 Ruby version: $(ruby --version)"
echo "📦 Bundle version: $(bundle --version)"
echo ""

# Check if Gemfile exists
if [ ! -f "Gemfile" ]; then
    echo "❌ Gemfile not found in current directory"
    echo "💡 Make sure you're in the Jekyll project root"
    exit 1
fi

echo "🔧 Installing/updating gems..."
bundle install --quiet

echo ""
echo "🌐 Starting Jekyll server..."
echo "📝 Site will be available at: http://localhost:4000/"
echo "🔄 LiveReload enabled for automatic refreshing"
echo "⏹️  Press Ctrl+C to stop the server"
echo ""

# Start Jekyll with LiveReload
bundle exec jekyll serve --livereload --host 0.0.0.0
