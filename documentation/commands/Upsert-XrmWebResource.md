# Command : `Upsert-XrmWebResource` 

## Description

**Create or update webresource.** : Check if webresource exists or not. If not exists create it and add it to specified solution.
If webresource exists, compare content and update it if different.

## Inputs

Name|Type|Position|Required|Default|Description
----|----|--------|--------|-------|-----------
XrmClient|ServiceClient|1|false|$Global:XrmClient|Xrm connector initialized to target instance. Use latest one by default. (Dataverse ServiceClient)
FilePath|String|2|true||Local webresource file path.
SolutionUniqueName|String|3|true||Microsoft Dataverse solution unique name where to add new webressource.
Prefix|String|4|false||Publisher customization prefix for newly created webresource.


## Usage

```Powershell 
Upsert-XrmWebResource [[-XrmClient] <ServiceClient>] [-FilePath] <String> [-SolutionUniqueName] <String> [[-Prefix] <String>] [<CommonParameters>]
``` 


