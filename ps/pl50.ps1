#pl.ps1 90
#Must open powershell in admin mode
#Enter parameter as integer between 0 and 100 i.e. 90 for 90%
#$powerLimit=[decimal]$args[0]/100
$powerLimit=0.5
$pow=nvidia-smi -q -d POWER | Select-String -Pattern ('Default Power')
$powNum=[decimal][regex]::Matches($pow, "\d+(\.\d\d)?").value
nvidia-smi -i 0 -pl ($powNum*$powerLimit)
nvidia-smi -q -d POWER | Select-String -Pattern ('Enforced Power')
#echo "`r`n"