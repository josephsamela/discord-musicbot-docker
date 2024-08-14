import requests
releases = requests.get('https://api.github.com/repos/jagrosh/MusicBot/releases/latest').json()
latest_release = releases['assets'][0]['browser_download_url']
print(latest_release)
