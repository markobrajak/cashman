Set-Location -Path "C:\Users\Marko\Google Drive\EF\2.letnik\Razvijanje\Domace naloge\Zakljucna naloga\"
$env:FLASK_APP=".\cashman-flask-project\cashman\index.py"
.\venv\Scripts\Activate.ps1
flask run -h 0.0.0.0