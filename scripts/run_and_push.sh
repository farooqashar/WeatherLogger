#!/bin/bash
# Ensure Homebrew and other common paths are available
export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Navigate to project directory
PROJECT_DIR="/Users/asharfarooq/Desktop/Projects/WeatherLogger"
cd "$PROJECT_DIR"

# Log file for debugging
LOG_FILE="$PROJECT_DIR/automation.log"

echo "--- Automation started at $(date) ---" >> "$LOG_FILE"

# Run the weather logging script
./.venv/bin/python3 scripts/log_weather.py >> "$LOG_FILE" 2>&1

# Git automation
git add . >> "$LOG_FILE" 2>&1
git commit -m "Automated weather log update: $(date)" >> "$LOG_FILE" 2>&1
git push >> "$LOG_FILE" 2>&1

echo "--- Automation finished at $(date) ---" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"
