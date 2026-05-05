#!/bin/bash
# Navigate to project directory
cd /Users/asharfarooq/Desktop/Projects/WeatherLogger

# Run the weather logging script
./.venv/bin/python3 scripts/log_weather.py

# Git automation
git add .
git commit -m "Automated weather log update: $(date)"
git push
