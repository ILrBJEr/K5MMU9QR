$Uri= 'https://moeclub.org'
[Net.HttpWebRequest]$WebRequest = [Net.HttpWebRequest]::Create($Uri)
[Net.HttpWebResponse]$WebResponse = $WebRequest.GetResponse()
$Reader = New-Object IO.StreamReader($WebResponse.GetResponseStream())
$Response = $Reader.ReadToEnd()
$Reader.Close()
echo $Response
