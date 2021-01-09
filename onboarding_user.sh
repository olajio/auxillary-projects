#!/bin/bash
 
clear
echo "To enter username from keyboard, enter '1'. To read names of users to be created from file, enter '2'"
read response
case $response in
  1)
    echo "Enter username"
    read name
    if [ $(getent passwd $name) ]
    then
      echo "User $name already exists"
      echo ""
      if [ ! -e /home/$name ]
      then
        mkdir /home/$name
        mkdir /home/$name/.ssh
        cp authorized_keys /home/$name/.ssh/authorized_keys
        echo "User: $name does NOT have a default home directory, but it has now been created for the user"
        echo "Public ssh key has also been created for user: $name"
        echo ""
      fi
    else
      useradd -g developers -s /bin/bash -m -d /home/$name $name
      mkdir /home/$name/.ssh
      cp authorized_keys /home/$name/.ssh/authorized_keys
      echo "User $name successfully created"
      echo ""
    fi;;
  2)
    echo "Creating users..."
    sleep 1
    for name in $(cat names.csv)
    do
      if [ $(getent passwd $name) ]
      then
        echo "User $name already exists"
        echo ""
        if [ ! -e /home/$name ]
        then
          mkdir /home/$name
          mkdir /home/$name/.ssh
          cp authorized_keys /home/$name/.ssh/authorized_keys
          echo "User: $name does NOT have a default home directory, but it has now been  created for the user"
          echo "Public ssh key has also been created for user: $name"
          echo ""
        fi
      else
        useradd -g developers -s /bin/bash -m -d /home/$name $name
        mkdir /home/$name/.ssh
        cp authorized_keys /home/$name/.ssh/authorized_keys
        echo "User $name successfully created"
        echo ""
      fi
    done;;
  *)
    echo "Invalid entry... Bye!";;
esac
