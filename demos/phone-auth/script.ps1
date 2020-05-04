Import-Module Microsoft.Graph
Connect-Graph -Scopes "UserAuthenticationMethod.ReadWrite.All"

$email = Read-Host -Prompt "Enter a user email (not the email currently signed-in with)"
$phoneNumber = Read-Host -Prompt "Enter a phone number (format +1 5555555555)"

Get-MgUserAuthenticationPhoneMethod -UserId $email

Read-Host -Prompt "Just listed out current sign-in methods. Press enter to continue"

New-MgUserAuthenticationPhoneMethod -UserId $email -PhoneNumber $phoneNumber -PhoneType "mobile"
Get-MgUserAuthenticationPhoneMethod -UserId $email

Read-Host -Prompt "Just added the new sign-in method and listed out current sign-in methods. Press enter key to finish."

Disconnect-Graph