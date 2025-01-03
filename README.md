#!/bin/bash
#asks you what you want to name your alias and confirms it again
function ALIASER()
{
read -p "Enter the name you wish to call your alias: " ALIASNAME
read -p "Enter the name once more: " ALIASNAME2 
}
ALIASER
#double checks if the 2 inputs are the same and asks you for the full file path of the script you want to add as an alias

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
#if everything checks out, the new alias will be added into the resource file
source ~/.zshrc 2>/dev/null
