# Command : `Get-XrmUsers` 

## Description

**Retrieve users.** : Get all system users from instance.

## Inputs

Name|Type|Position|Required|Default|Description
----|----|--------|--------|-------|-----------
XrmClient|ServiceClient|1|false|$Global:XrmClient|Xrm connector initialized to target instance. Use latest one by default. (Dataverse ServiceClient)
Columns|String[]|2|false|@("fullname", "internalemailaddress")|Specify expected columns to retrieve. (Default : all columns)


## Usage

```Powershell 
Get-XrmUsers [[-XrmClient] <ServiceClient>] [[-Columns] <String[]>] [<CommonParameters>]
``` 


