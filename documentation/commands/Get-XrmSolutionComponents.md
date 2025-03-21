# Command : `Get-XrmSolutionComponents` 

## Description

**Get Solution Components.** : Retrieve components from given solution and expected types.

## Inputs

Name|Type|Position|Required|Default|Description
----|----|--------|--------|-------|-----------
XrmClient|ServiceClient|1|false|$Global:XrmClient|Xrm connector initialized to target instance. Use latest one by default. (Dataverse ServiceClient)
SolutionUniqueName|String|2|true||Unmanaged solution unique name where to get components.
ComponentTypes|Int32[]|3|false|@()|Array of component types number to retrieve. (Default: none = retrieve all components)


## Usage

```Powershell 
Get-XrmSolutionComponents [[-XrmClient] <ServiceClient>] [-SolutionUniqueName] <String> [[-ComponentTypes] <Int32[]>] [<CommonParameters>]
``` 


