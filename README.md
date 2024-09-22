**This Repo consists of scripts which can be useful during migration from D365 RetailSDK to D365 CommerceSDK
**

.reg files will be used to update the required registry keys to support store commerce installation [*Applicable for the SCA apps which are 10.0.32 and above].

MMA.ps1 is responsible to configure already installed SSMS server to support Mixed Mode Authentication.

Uninstall_POS.ps1 --> Used to uninstall MPOS legacy application from the registers [*Please test in UAT before executing in PROD]

SC_Installation.ps1 is used to install the Store Commerce App placed in the same folder without passing any commands and it can be used for automation purposes.
