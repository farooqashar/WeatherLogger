#!/bin/bash
# Ensure Homebrew and other common paths are available
export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Navigate to project directory
cd /Users/asharfarooq/Desktop/Projects/WeatherLogger

# Run the weather logging script
./.venv/bin/python3 scripts/log_weather.py

# Git automation
git add .
git commit -m "Automated weather log update: $(date)"
git push
