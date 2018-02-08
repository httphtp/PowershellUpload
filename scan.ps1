$headers = @{Authorization='563d64fc5054d3b239ac0419f1d6b2378465f5c80e1778c283eb1e3265bdd7ae'}
$body = @{scan_type = 'apk';file_name = 'xxx.apk';hash ='82ab8b2193b3cfb1c737e3a786be363a';re_scan='0'}
$uri  = 'http://localhost:8000/api/v1/scan'
Invoke-WebRequest -Uri $uri -Method Post -Headers $headers -Body $body