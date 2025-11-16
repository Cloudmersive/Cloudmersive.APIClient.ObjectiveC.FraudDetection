Remove-Item –path ./client –recurse

Invoke-WebRequest -Uri 'https://api.cloudmersive.com/fraud-ai/docs/v1/swagger' -OutFile '.\fraud-api-swagger.json'
(Get-Content .\fraud-api-swagger.json).replace('localhost', "api.cloudmersive.com") | Set-Content .\fraud-api-swagger.json
(Get-Content .\fraud-api-swagger.json -Raw) -replace '"http"','"https"' | Set-Content .\fraud-api-swagger.json -Encoding UTF8

& java -jar swagger-codegen-cli.jar generate -i .\fraud-api-swagger.json -l objc -o client -c packageconfig.json
(Get-Content ./client/CloudmersiveFraudApiClient.podspec).replace('CloudmersiveFraudApiClient/**/*.{m,h}', "client/CloudmersiveFraudApiClient/**/*.{m,h}") | Set-Content ./client/CloudmersiveFraudApiClient.podspec
(Get-Content ./client/CloudmersiveFraudApiClient.podspec).replace('CloudmersiveFraudApiClient/**/*.h', "client/CloudmersiveFraudApiClient/**/*.h") | Set-Content ./client/CloudmersiveFraudApiClient.podspec