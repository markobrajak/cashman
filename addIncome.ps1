$params = @{amount=800; description='Popldanski s.p.'}

Invoke-WebRequest -Uri http://localhost:5000/incomes -Method POST -Body ($params|ConvertTo-Json) -ContentType "application/json"
