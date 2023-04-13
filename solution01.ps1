

$pathToOutputFile = 'C:\Users\temp18\Downloads\out3.csv'
$webResponse = Invoke-WebRequest -Uri "https://datausa.io/api/data?drilldowns=State&measures=Population"
$webResponse.Content | Out-File C:\Users\temp18\Documents\Github\githubster01\parseDemo.json
$obj03 = Get-Content C:\Users\temp18\Downloads\parseDemo.json -Raw | ConvertFrom-Json  
$obj03 | Select-Object -Property * |  Select-Object -ExpandProperty data|  Export-Csv -Path 'C:\Users\temp18\Downloads\out3.csv' -NoTypeInformation


