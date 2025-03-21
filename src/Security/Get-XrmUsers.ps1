<#
    .SYNOPSIS
    Retrieve users.

    .DESCRIPTION
    Get all system users from instance.

    .PARAMETER XrmClient
    Xrm connector initialized to target instance. Use latest one by default. (Dataverse ServiceClient)

    .PARAMETER Columns
    Specify expected columns to retrieve. (Default : all columns)
#>
function Get-XrmUsers {
    [CmdletBinding()]
    param
    ( 
        [Parameter(Mandatory = $false, ValueFromPipeline)]
        [Microsoft.PowerPlatform.Dataverse.Client.ServiceClient]
        $XrmClient = $Global:XrmClient,

        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Columns = @("fullname", "internalemailaddress")
    )
    begin {
        $StopWatch = [System.Diagnostics.Stopwatch]::StartNew();
        Trace-XrmFunction -Name $MyInvocation.MyCommand.Name -Stage Start -Parameters ($MyInvocation.MyCommand.Parameters);       
    }    
    process {
        $queryUsers = New-XrmQueryExpression -Logicalname "systemuser" -Columns $Columns;
        $users = Get-XrmMultipleRecords -XrmClient $XrmClient -Query $queryUsers;
        $users;
    }
    end {
        $StopWatch.Stop();
        Trace-XrmFunction -Name $MyInvocation.MyCommand.Name -Stage Stop -StopWatch $StopWatch;
    }    
}
Export-ModuleMember -Function Get-XrmUsers -Alias *;