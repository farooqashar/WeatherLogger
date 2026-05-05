import requests
import datetime
import os

def log_weather():
    try:
        # Fetch weather from wttr.in (lightweight, no API key required)
        # format=3 gives a single line summary: "City: Condition Temperature"
        response = requests.get("https://wttr.in?format=3")
        response.raise_for_status()
        weather_info = response.text.strip()
        
        now = datetime.datetime.now()
        timestamp = now.strftime('%Y-%m-%d %H:%M:%S')
        
        # Determine filename for the current month (e.g., weather_log_2026_05.txt)
        log_filename = f"weather_log_{now.strftime('%Y_%m')}.txt"
        
        # The file will be created in the root of the project
        log_path = os.path.join(os.path.dirname(__file__), "..", log_filename)
        
        log_entry = f"{timestamp} - {weather_info}\n"
        
        with open(log_path, "a") as f:
            f.write(log_entry)
            
        print(f"Successfully logged weather to {log_filename}")
    except Exception as e:
        print(f"Error logging weather: {e}")

if __name__ == "__main__":
    log_weather()
