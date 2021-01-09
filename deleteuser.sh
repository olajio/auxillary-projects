#!/bin/bash
 
clear
echo "Be aware that this script will remove the users and all of their data"
echo ""
sleep 1
echo ""
echo "If you would like to back up the users' data before deleting them, PRESS 'a' or 'A' to abort now. To continue deleting the user and the data, PRESS y or Y"
read response
case $response in
  a|A)
    echo "Aborting..."
    sleep 2
    echo "Aborted";;
  y|Y)
    echo "Do you want to delete users in the 'names.csv' file or you would like to enter the name of the user to delete?"
    echo ""
    echo "Enter 'k' or 'K' to enter username from keyboard, enter 'f' or 'F' read usernames from file"
    read option
    case $option in
      k|K)
        echo "Enter username to delete"
        read username
        if [ $(getent passwd $username) ]
        then
          userdel $username
          if [ -e /home/$username ]
          then
            rm -rf /home/$username
            echo "User: $username and all its files and folders successfully deleted"
            echo ""
          else
            echo "User $username has no default home directory"
            echo "User $username has been successfully removed"
            echo ""
          fi
        else
          echo "User: $username does NOT exist"
        fi;;
      f|F)
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
      *)
        echo "Invalid response - Bye...";;
    esac;;
  *)
    echo "Invalid response - Bye...";;
esac
