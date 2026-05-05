# WeatherLogger

A lightweight, automated script to log weather data and sync it to GitHub.

## Features
- Fetches weather from `wttr.in`.
- Creates a new log file for each month (e.g., `weather_log_2026_05.txt`).
- **Automated Sync**: Includes a script to log and push changes to GitHub in one go.

## Setup
1. **Virtual Environment**:
   ```bash
   python3 -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
   ```

2. **Manual Run**:
   ```bash
   ./scripts/run_and_push.sh
   ```

3. **Cron Automation**:
   To run every Friday at 10 AM, add this to your `crontab -e`:
   ```cron
   0 10 * * 5 /bin/bash /Users/asharfarooq/Desktop/Projects/WeatherLogger/scripts/run_and_push.sh > /dev/null 2>&1
   ```
