# build-2020-msgraph-whatsnew-demos
Demonstrations that we need to build for the build 2020 Microsoft Graph What's new session.

## Users and security demonstrations

### Pre-requisites

- [Microsoft Graph PowerShell](https://www.powershellgallery.com/packages/Microsoft.Graph)
- Demonstration tenant with Azure AD P2 licenses

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