Import-Module Microsoft.Graph
Connect-Graph -Scopes "Policy.ReadWrite.ConditionalAccess", "Application.Read.All", "Policy.Read.All"

Get-MgConditionalAccessPolicy

Read-Host -Prompt "We just: 1. Loaded MS Graph PS, 2. Connected with required permissions, 3. Listed out all existing policies, Press enter key to continue."

$conditions = @{
    applications = @{
        includeApplications = @("00000002-0000-0ff1-ce00-000000000000");
    };
    users = @{
        includeUsers = @("All");
    };
    clientAppTypes = @("browser", "modern");
    locations = @{
        includeLocations = @("all");
    }
}

New-MgConditionalAccessPolicy -DisplayName "MFA required when using Exchange"
    -GrantControlBuiltInControls @('mfa')
    -State 'enabled'
    -GrantControlOperator 'OR'
    -Conditions $conditions

Get-MgConditionalAccessPolicy

Read-Host -Prompt "We just: 1. Created a new policy, 2. Listed out all existing policies, Press enter key to finish."

Disconnect-Graph