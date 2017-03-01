﻿function Invoke-DiagnosticQuerySelectionHelper
{
Param(
    [parameter(Mandatory = $true)]
    $ParsedScript
    )

    [string[]]$selection = $script | Select-Object QueryNr, QueryName, DBSpecific, Description | Out-GridView -Title "Diagnostic Query Overview" -OutputMode Multiple | Sort-Object QueryNr | Select-Object -ExpandProperty QueryName

    $selection
}
