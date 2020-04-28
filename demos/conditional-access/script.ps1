Import-Module Microsoft.Graph
Connect-Graph -Scopes "Policy.ReadWrite.ConditionalAccess", "Application.Read.All", "Policy.Read.All"
Get-MgConditionalAccessPolicy
Read-Host -Prompt "We just: 1. Loaded MS Graph PS, 2. Connected with required permissions, 3. Listed out all existing policies, Press enter key to continue."
New-MgConditionalAccessPolicy -DisplayName "MFA required when using Exchange"
    -GrantControlBuiltInControls @('mfa')
    -State 'enabled'
    -GrantControlOperator 'OR'
    -UserIncludeUsers 'All'
    -ApplicationIncludeApplications '00000002-0000-0ff1-ce00-000000000000'
Get-MgConditionalAccessPolicy
Read-Host -Prompt "We just: 1. Created a new policy, 2. Listed out all existing policies, Press enter key to finish."