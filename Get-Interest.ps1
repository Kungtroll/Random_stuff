Function Get-Interest {

#<
.PARAMETER Startamount
The amount of money to when starting.

.PARAMETER years
How Many years the money will be invested

.PARAMETER interestrate
The expected interest rate on the investment (Example: 5 means 5% yearly interest)
#>

   Param(
    $startamount,
    $years,
    [Single]$interestrate 
    )#Param


    $sum = $startamount
    $i=0
    Do{
        $sum = $sum*(1+$interestrate/100)
        $i++
    }Until ($i -eq $years)#Do-Until

    Return $Sum

}#End Function Get-Interest

Function Get-Interest {

#<
.PARAMETER Startamount
The amount of money to when starting.

.PARAMETER years
How Many years the money will be invested

.PARAMETER interestrate
The expected interest rate on the investment (Example: 5 means 5% yearly interest)
#>

   Param(
    $startamount,
    $years,
    [Single]$interestrate 
    )#Param

    $sum = $startamount
    $Sum = [Math]::Pow((1+$interestrate/100),$years)*$sum
    Return $sum
}#End Function Get-Interest