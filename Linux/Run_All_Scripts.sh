#!/bin/bash

if [[ -f Dealers_working_during_losses ]]
then
	rm Dealers_working_during_losses
fi


sh Script_0310_050000_AM.sh  >> Dealers_working_during_losses
sh Script_0312_080000_AM.sh  >> Dealers_working_during_losses
sh Script_0310_080000_AM.sh  >> Dealers_working_during_losses
sh Script_0312_080000_PM.sh  >> Dealers_working_during_losses
sh Script_0310_080000_PM.sh  >> Dealers_working_during_losses 
sh Script_0312_110000_PM.sh  >> Dealers_working_during_losses
sh Script_0310_110000_PM.sh  >> Dealers_working_during_losses
sh Script_0315_020000_PM.sh  >> Dealers_working_during_losses
sh Script_0312_020000_PM.sh  >> Dealers_working_during_losses
sh Script_0315_050000_AM.sh  >> Dealers_working_during_losses
sh Script_0310_020000_PM.sh  >> Dealers_working_during_losses
sh Script_0312_050000_AM.sh  >> Dealers_working_during_losses
sh Script_0315_080000_AM.sh  >> Dealers_working_during_losses

nm=$(awk '{$1="";$2="";print}' Dealers_working_during_losses | uniq -c )

printf "\n\nTotal count of times a Dealers were working during each of above times:\n=====================================================================================\n" >> Dealers_working_during_losses

echo $nm >> Dealers_working_during_losses
printf "\n\n" >> Dealers_working_during_losses
