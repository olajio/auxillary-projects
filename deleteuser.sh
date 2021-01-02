#!/bin/bash
 
clear
echo "Be aware that this script will remove the users and all of their data"
echo ""
sleep 2
echo "If you would like to back up the users' data before deleting them, PRESS 'a' or 'A' to abort now. To continue deleting the user and the data, please y or Y"
read response
case $response in
  a|A)
    echo "Aborting..."
    sleep 2
    echo "Aborted";;
  y|Y)
    echo "Deleting users and their data..."
    sleep 2
    for name in $(cat names.csv)
    do
      if [ $(getent passwd $name) ]
      then
        userdel $name
        if [ -e /home/$name ]
        then
          rm -rf /home/$name
          echo "User: $name and all its files and folders successfully deleted"
          echo ""
        else
          echo "User $name has no default home directory"
          echo "User $name has been successfully removed"
          echo ""
        fi
      else
        echo "User: $name does NOT exist"
      fi
    done;;
  *) echo "Invalid response - Bye...";;
esac
