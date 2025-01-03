#!/bin/bash

function ALIASER()
{
read -p "Enter the name you wish to call your alias: " ALIASNAME
read -p "Enter the name once more: " ALIASNAME2 
}
ALIASER

function ALIASER2()
{
if [[ "$ALIASNAME" == "$ALIASNAME2" ]]
then
read -p "Enter the full file path of the script you wish to add to your alias: " SCRIPTPATH
read -p "Enter the full file path of the script once more: " SCRIPTPATH2

	if [[ "$SCRIPTPATH" == "$SCRIPTPATH2" ]] 
		then 
			echo "Adding your alias into .zshrc"
			sudo echo "alias $ALIASNAME='bash $SCRIPTPATH'" >> ~/.zshrc

		else
			echo "You entered different file paths to the script please try again" 
			
		fi
else
echo "You entered different names for your alias please try again"
ALIASER2
fi
}
ALIASER2 
source ~/.zshrc 2>/dev/null

