# build-2020-msgraph-whatsnew-demos
Demonstrations that we need to build for the build 2020 Microsoft Graph What's new session.

## Users and security demonstrations

### Pre-requisites

- [Microsoft Graph PowerShell](https://www.powershellgallery.com/packages/Microsoft.Graph)
- Demonstration tenant with Azure AD P2 licenses
- [PowerShell 7](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-windows?view=powershell-7#installing-the-msi-package)

### Conditional access

>Note: this demonstration requires MFA settings to be configured on the user being demonstrated.

1. Open an in-private browser.
1. Sign-in to [outlook online](https://outlook.office.com/mail/inbox).
1. Signal to attendance that the user accessed outlook only with a password.
1. Close the browser.
1. Run `demos/conditional-access/script.ps1`.
1. Go over what each command does.
1. Open an in-private browser.
1. Sign-in to [outlook online](https://outlook.office.com/mail/inbox).
1. Signal to attendance that this time another factor of authentication was required to access outlook, improving security.
1. Tell attendance that policies can be customized based on the:
    - app being accessed
    - the context (browser or native app, location...)
    - the user (groups, type of users)

>Note: we could also show up the newly created policy in [Azure Portal](https://portal.azure.com) > Azure AD > Security > Conditional Access

#### Additional resources

- [building a conditional access policy](https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/concept-conditional-access-policies)
- [conditional access policy reference](https://docs.microsoft.com/en-us/graph/api/conditionalaccessroot-post-policies?view=graph-rest-beta&tabs=http)


### Improved query capabilities for Directory Objects (preview)

> This demo is optional, we'll see if we have time during recording.

1. Open the Graph Explorer.
1. Add the following request header `ConsistencyLevel` set to `eventual`.
1. GET `https://graph.microsoft.com/beta/users/$count?$filter=UserType  eq 'Member'` (Raw User Count with Filtering)
1. GET `https://graph.microsoft.com/beta/users?$count=true&$select=displayName,Id&$orderby=displayName&$search="displayName:queen"` (Search, Sort & Count Users)
1. GET `https://graph.microsoft.com/beta/groups/792be2c1-1b38-4083-b5d0-d49c8a3b8f2d/transitiveMembers/microsoft.graph.user?$count=true&$select=displayName,Id&$search="displayName:queen"&$orderby=displayName` (Search & Count Group members transitively)