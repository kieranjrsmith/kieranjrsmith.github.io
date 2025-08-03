#!/bin/bash

# Decap CMS Mode Switcher
# Usage: ./switch-cms-mode.sh [local|live]

CONFIG_FILE="admin/config.yml"

show_usage() {
    echo "Usage: $0 [local|live]"
    echo ""
    echo "  local  - Switch to local development mode (requires npx decap-server)"
    echo "  live   - Switch to production/GitHub Pages mode"
    echo ""
    echo "Current mode: $(get_current_mode)"
}

get_current_mode() {
    # Check if GitHub backend is active (not commented out)
    if grep -q "^backend:" "$CONFIG_FILE" && grep -A2 "^backend:" "$CONFIG_FILE" | grep -q "name: github"; then
        echo "LIVE (GitHub)"
    # Check if proxy backend is active (not commented out)  
    elif grep -q "^backend:" "$CONFIG_FILE" && grep -A2 "^backend:" "$CONFIG_FILE" | grep -q "name: proxy"; then
        echo "LOCAL (Proxy)"
    else
        echo "UNKNOWN - Check config manually"
    fi
}

switch_to_local() {
    echo "Switching to LOCAL development mode..."
    
    # Comment out GitHub backend section completely
    sed -i '/^# PRODUCTION\/LIVE VERSION/,/^#   branch: main/ {
        s/^backend:/# backend:/
        s/^  name: github/#   name: github/  
        s/^  repo:/#   repo:/
        s/^  branch: main/#   branch: main/
    }' "$CONFIG_FILE"
    
    # Uncomment local backend section
    sed -i '/^# LOCAL DEVELOPMENT VERSION/,/^#   branch: main/ {
        s/^# backend:/backend:/
        s/^#   name: proxy/  name: proxy/
        s/^#   proxy_url/  proxy_url/
        s/^#   branch: main/  branch: main/
    }' "$CONFIG_FILE"
    
    echo "✅ Switched to LOCAL mode"
    echo "📝 Don't forget to run: npx decap-server"
    echo "🌐 Access CMS at: http://localhost:4000/admin/"
}

switch_to_live() {
    echo "Switching to LIVE production mode..."
    
    # Comment out local backend section completely
    sed -i '/^# LOCAL DEVELOPMENT VERSION/,/^  branch: main/ {
        s/^backend:/# backend:/
        s/^  name: proxy/#   name: proxy/
        s/^  proxy_url/#   proxy_url/
        s/^  branch: main/#   branch: main/
    }' "$CONFIG_FILE"
    
    # Uncomment GitHub backend section  
    sed -i '/^# PRODUCTION\/LIVE VERSION/,/^#   branch: main/ {
        s/^# backend:/backend:/
        s/^#   name: github/  name: github/
        s/^#   repo:/  repo:/
        s/^#   branch: main/  branch: main/
    }' "$CONFIG_FILE"
    
    echo "✅ Switched to LIVE mode"
    echo "🌐 Access CMS at: https://kieranjrsmith.github.io/admin/"
    echo "🔐 Login with GitHub when prompted"
}

# Main script logic
case "$1" in
    "local")
        switch_to_local
        ;;
    "live")
        switch_to_live
        ;;
    "status")
        echo "Current mode: $(get_current_mode)"
        ;;
    *)
        show_usage
        ;;
esac
