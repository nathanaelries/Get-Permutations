function Get-Permutations($text, $NumberOfDigits, $numberOfChars)
{
    if ($numberOfDigits -gt 0)
    {
        for ($j = 0; $j -lt $numberOfChars; $j++)
        {
            Get-Permutations -text ($Text + $j.ToString()) -numberOfDigits ($numberOfDigits - 1) -numberOfChars $numberOfChars
        }
    }
    else 
    {
        $result += $text
    }
    return $result
}

Get-Permutations -text "" -NumberOfDigits 3 -NumberOfChars 2