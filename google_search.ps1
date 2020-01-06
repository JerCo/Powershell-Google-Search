$search_string = read-host "What do you want to search for yo?"

$ie = New-Object -com InternetExplorer.Application -ErrorAction Stop
# $ie | get-member
$ie.Visible = $true
$ie.Navigate("https://www.google.com")
while($ie.Busy) { Start-Sleep -Milliseconds 1 }
$doc = $ie.Document

$doc.getElementsByName("q")[0].value = $search_string
$doc.getElementsByName("btnK")[0].click()