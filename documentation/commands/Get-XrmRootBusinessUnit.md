# Command : `Get-XrmRootBusinessUnit` 

## Description

**Retrieve root business unit.** : Get top  business unit of organization.

## Inputs

Name|Type|Position|Required|Default|Description
----|----|--------|--------|-------|-----------
XrmClient|ServiceClient|1|false|$Global:XrmClient|Xrm connector initialized to target instance. Use latest one by default. (Dataverse ServiceClient)
Columns|String[]|2|false|@("*")|Specify expected columns to retrieve. (Default : all columns)


## Usage

```Powershell 
Get-XrmRootBusinessUnit [[-XrmClient] <ServiceClient>] [[-Columns] <String[]>] [<CommonParameters>]
``` 


