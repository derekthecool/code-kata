function Sum {
  [CmdletBinding()]
  param (
    [Parameter(Mandatory = $true)]
    [string]
    $StringToSum
  )

  Write-Output $StringToSum
}
