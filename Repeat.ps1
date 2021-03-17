# Nick Espindola
# 03/17/2021
#
# Create a powershell function or cmdlet that takes an arbitrarily long string parameter $foo (e.g. 'abcdedcba') and returns the first recurring character in that Input string.
# In 'abcdedcba', 'd' would be the first recurring character, so the cmdlet/function should return 'd' for that sample input.
#
#

Function Get-RepeatChar{
Param( [string] $strInput )

[char[]]$chrChars = @()
[int]$i = 0

try {
    foreach( $chrCharInString in [char[]]$strInput ){
    if ( $chrChars -Contains $chrCharInString ){
        return $chrCharInString
    }else{
        $chrChars += $chrCharInString 
    }
    $i++;
    }
    return $null
    }
catch
    {
    Write-Error -Message $Error[0].Exception.Message
    }
    
}

Get-RepeatChar "adcdedcba"

