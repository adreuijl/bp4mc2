@echo off
echo Creating concatenated file T...
powershell -Command "$myFile = (gc 'UploadDataset local.ttl') -replace 'http://localhost:8080', 'http://pdok-ld-gck.in.kadaster.nl' -replace '/catalogus/tax(|/)$', '/(|/)$' -replace '/catalogus/tax', '' -replace '/catalogus', ''; [System.IO.File]::WriteAllLines('UploadDataset T.ttl', $myFile)"
echo Creating concatenated file A...
powershell -Command "$myFile = (gc 'UploadDataset local.ttl') -replace 'http://localhost:8080', 'http://pdok-ld-gck.fto.kadaster.nl' -replace '/catalogus/tax(|/)$', '/(|/)$' -replace '/catalogus/tax', '' -replace '/catalogus', ''; [System.IO.File]::WriteAllLines('UploadDataset A.ttl', $myFile)"
echo Creating concatenated file P...
powershell -Command "$myFile = (gc 'UploadDataset local.ttl') -replace 'http://localhost:8080', 'http://pdok-ld-gck.cs.kadaster.nl' -replace '/catalogus/tax(|/)$', '/(|/)$' -replace '/catalogus/tax', '' -replace '/catalogus', ''; [System.IO.File]::WriteAllLines('UploadDataset P.ttl', $myFile)"
echo Whoohoo! All done!
pause