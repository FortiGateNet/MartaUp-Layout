
az login
$appId = az ad app create --display-name "MSGraph UWP app" --public-client-redirect-uris "https://login.microsoftonline.com/common/oauth2/nativeclient" --query appId -o tsv
((Get-Content -path ./UWP-app-MSGraph/MainPage.xaml.cs -Raw) -replace 'CLIENT_ID',$appId) | Set-Content -Path ./UWP-app-MSGraph/MainPage.xaml.cs