# auxillary-projects
## Shell Scripting To Create Users  

**Note:** You can as well access the content of this repo in the following link, in case you prefer some more colorful and friendly view: https://docs.google.com/document/d/1DCOYjDia2u6ke0tJf9h_25P7fPX32z6Wi4acHuOMggc/edit?usp=sharing

### Project Requirement
- In this project, you need to onboard 20 new Linux users onto a server. Create a shell script that reads a csv file that contains the first name of the users to be onboarded.
- Create the project folder called **Shell**
- Create a **csv** file name **names.csv**
- The script will read the CSV file, create each user on the server, and add to an existing group called developers (You will need to manually create this group ahead).
- Ensure that your script will first check for the existence of the user on the system, before it will attempt to create that it.
- Ensure that the user that is being created also has a default home folder
- Ensure that each user has a .ssh folder within its HOME folder. If it does not exist, then create it.
- For each user’s SSH configuration, create an authorized_keys file and add the below public key:

`ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCzKZyicHxIkklSrNlxsJyyTrcIdBIt84Z0cQb3R4k0jH53kxkaT5hP8tfWTe62LXi7vV86fY+SX7TBNM76XGCbw/6vrMGegm6J1x2i1AiLNwq5nqTjOGn0AIwku4IlCCLAB7tdfRyVuCarmBlwny3lzRyybIUAWXR/D6vpN09MsDILbKdhay+Q/p9OUBMSLPqXdY/QIh/Oe3rVv1lwY3AohNfq7V3tO88zKswfA5iiexNiSYX1myT0OrX8cBE771j9quoNZhQgaLI1mIMtAvnHQChrn9k2nUaO/BMBCQGol5XzGv1ado7hgoVPoluIUD+FGNo/pH4zcmDLICH6drXY/C9MESnkMUPLFxBXKO/OitApY71vRao9nAhAwpVMsy6FqiOb5uawhvhoHYIHTV/f4EtagVagRMP2PxYMYR6jykIV4MPJTkCm+lGhTyMlRu+qRQjdLn8AAtHf4aEV8dIkoGh088DI7eA/4o0wz4OV4upH5ewSFS+5IHmRECEW5Nc=`

- Test a few of the users randomly, and ensure that you are able to connect to the server using the below private key.
```
-----BEGIN OPENSSH PRIVATE KEY-----
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
kmaSGj362OnCCNAAAACWRhcmVARGFyZQE=
-----END OPENSSH PRIVATE KEY-----
```


To start with, I created the Shell folder and the names.csv file in it.
```
ubuntu@ip-172-31-20-117:~$ cd Shell/
ubuntu@ip-172-31-20-117:~/Shell$ 
ubuntu@ip-172-31-20-117:~/Shell$ cat names.csv 
olamide
olakunle
byron
sonaike
kehinde
adeyemi
akinlabi
chi
laniya
olu
kemi
fasesimi
davies
olajide
tim
ayo
abimbola
augustine
hannah
hadassah
```
 
Since I’ll be repeating the same steps for the names, I decided to use the for loop. For a start, I tried to use the for loop to test how I can iterate through the names.
```
ubuntu@ip-172-31-20-117:~/Shell$ for name in $(cat names.csv)
> do
> echo "Hello $name"
> done
Hello olamide
Hello olakunle
Hello byron
Hello sonaike
Hello kehinde
Hello adeyemi
Hello akinlabi
Hello chi
Hello laniya
Hello olu
Hello kemi
Hello fasesimi
Hello davies
Hello olajide
Hello tim
Hello ayo
Hello abimbola
Hello augustine
Hello hannah
Hello hadassah
```
 
Creating a testgroup and added a testuser to it
```
ubuntu@ip-172-31-20-117:~$ sudo groupadd testgroup
ubuntu@ip-172-31-20-117:~$ sudo useradd -g testgroup -s /bin/bash -m -d /home/testuser testuser
ubuntu@ip-172-31-20-117:~$ 
```
 
Verified that the group was created
```
ubuntu@ip-172-31-20-117:~$ cat /etc/group | grep testgroup
Testgroup:x:1002:
ubuntu@ip-172-31-20-117:~$
```
 
Verified that the user was created in the expected group and that the home directory was created
```
ubuntu@ip-172-31-20-117:~$ cat /etc/passwd | grep testuser
testuser:x:1001:1002::/home/testuser:/bin/bash
ubuntu@ip-172-31-20-117:~$
```
 
Testing a sample command to check if a user exists or not.
```
ubuntu@ip-172-31-20-117:~$ if [ $(getent passwd testuser) ] ; then
>     echo user testuser exists; 
> else
>     echo user testuser doesn\'t exists; 
> fi
user testuser exists
ubuntu@ip-172-31-20-117:~$ 
ubuntu@ip-172-31-20-117:~$ 
ubuntu@ip-172-31-20-117:~$ 
ubuntu@ip-172-31-20-117:~$ if [ $(getent passwd testuser2) ] ; then     echo user testuser exists;  else     echo user testuser doesn\'t exists;  fi
user testuser doesn't exists
```
 
### Converting the different commands into a script

First I copied the rsa key to a file named authorized_keys in the Shell directory
```
ubuntu@ip-172-31-20-117:~$ cd Shell/
 
ubuntu@ip-172-31-20-117:~/Shell$ ls
authorized_keys  deleteuser.sh  names.csv  onboarding_user.sh
 
ubuntu@ip-172-31-20-117:~/Shell$ cat authorized_keys 
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCzKZyicHxIkklSrNlxsJyyTrcIdBIt84Z0cQb3R4k0jH53kxkaT5hP8tfWTe62LXi7vV86fY+SX7TBNM76XGCbw/6vrMGegm6J1x2i1AiLNwq5nqTjOGn0AIwku4IlCCLAB7tdfRyVuCarmBlwny3lzRyybIUAWXR/D6vpN09MsDILbKdhay+Q/p9OUBMSLPqXdY/QIh/Oe3rVv1lwY3AohNfq7V3tO88zKswfA5iiexNiSYX1myT0OrX8cBE771j9quoNZhQgaLI1mIMtAvnHQChrn9k2nUaO/BMBCQGol5XzGv1ado7hgoVPoluIUD+FGNo/pH4zcmDLICH6drXY/C9MESnkMUPLFxBXKO/OitApY71vRao9nAhAwpVMsy6FqiOb5uawhvhoHYIHTV/f4EtagVagRMP2PxYMYR6jykIV4MPJTkCm+lGhTyMlRu+qRQjdLn8AAtHf4aEV8dIkoGh088DI7eA/4o0wz4OV4upH5ewSFS+5IHmRECEW5Nc=
```
 
Created the developers group. Note, group ID is 1001
```
ubuntu@ip-172-31-20-117:~$ sudo groupadd developers
ubuntu@ip-172-31-20-117:~$ sudo cat /etc/group | grep developers
developers:x:1001:
```
 
See the script to create the users:
```
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
```
 
See the `onboarding_user.sh` script in action:
```
Creating users...
User olamide successfully created
 
User olakunle successfully created
 
User byron successfully created
 
User sonaike successfully created
 
User kehinde successfully created
 
User adeyemi successfully created
 
User akinlabi successfully created
 
User chi successfully created
 
User laniya successfully created
 
User olu successfully created
 
User kemi successfully created
 
User fasesimi successfully created
 
User davies successfully created
 
User olajide successfully created
 
User tim successfully created
 
User ayo successfully created
 
User abimbola successfully created
 
User augustine successfully created
 
User hannah successfully created
 
User hadassah successfully created
```
 
 
See below showing that the users were created in the developers group as directed:
```
ubuntu@ip-172-31-20-117:~/Shell$ cat /etc/passwd | grep 1001::
olamide:x:1001:1001::/home/olamide:/bin/bash
olakunle:x:1002:1001::/home/olakunle:/bin/bash
byron:x:1003:1001::/home/byron:/bin/bash
sonaike:x:1004:1001::/home/sonaike:/bin/bash
kehinde:x:1005:1001::/home/kehinde:/bin/bash
adeyemi:x:1006:1001::/home/adeyemi:/bin/bash
akinlabi:x:1007:1001::/home/akinlabi:/bin/bash
chi:x:1008:1001::/home/chi:/bin/bash
laniya:x:1009:1001::/home/laniya:/bin/bash
olu:x:1010:1001::/home/olu:/bin/bash
kemi:x:1011:1001::/home/kemi:/bin/bash
fasesimi:x:1012:1001::/home/fasesimi:/bin/bash
davies:x:1013:1001::/home/davies:/bin/bash
olajide:x:1014:1001::/home/olajide:/bin/bash
tim:x:1015:1001::/home/tim:/bin/bash
ayo:x:1016:1001::/home/ayo:/bin/bash
abimbola:x:1017:1001::/home/abimbola:/bin/bash
augustine:x:1018:1001::/home/augustine:/bin/bash
hannah:x:1019:1001::/home/hannah:/bin/bash
hadassah:x:1020:1001::/home/hadassah:/bin/bash
ubuntu@ip-172-31-20-117:~/Shell$ 
```
 
Please see the output of the tree command to showing that default home directory, .ssh directory and authorized_keys file for each user were created as expected
```
ubuntu@ip-172-31-20-117:~/Shell$ tree -a /home
/home
├── abimbola
│   ├── .bash_logout
│   ├── .bashrc
│   ├── .profile
│   └── .ssh
│       └── authorized_keys
├── adeyemi
│   ├── .bash_logout
│   ├── .bashrc
│   ├── .profile
│   └── .ssh
│       └── authorized_keys
├── akinlabi
│   ├── .bash_logout
│   ├── .bashrc
│   ├── .profile
│   └── .ssh
│       └── authorized_keys
├── augustine
│   ├── .bash_logout
│   ├── .bashrc
│   ├── .profile
│   └── .ssh
│       └── authorized_keys
├── ayo
│   ├── .bash_logout
│   ├── .bashrc
│   ├── .profile
│   └── .ssh
│       └── authorized_keys
├── byron
│   ├── .bash_logout
│   ├── .bashrc
│   ├── .profile
│   └── .ssh
│       └── authorized_keys
├── chi
│   ├── .bash_logout
│   ├── .bashrc
│   ├── .profile
│   └── .ssh
│       └── authorized_keys
├── davies
│   ├── .bash_logout
│   ├── .bashrc
│   ├── .profile
│   └── .ssh
│       └── authorized_keys
├── fasesimi
│   ├── .bash_logout
│   ├── .bashrc
│   ├── .profile
│   └── .ssh
│       └── authorized_keys
├── hadassah
│   ├── .bash_logout
│   ├── .bashrc
│   ├── .profile
│   └── .ssh
│       └── authorized_keys
├── hannah
│   ├── .bash_logout
│   ├── .bashrc
│   ├── .profile
│   └── .ssh
│       └── authorized_keys
├── kehinde
│   ├── .bash_logout
│   ├── .bashrc
│   ├── .profile
│   └── .ssh
│       └── authorized_keys
├── kemi
│   ├── .bash_logout
│   ├── .bashrc
│   ├── .profile
│   └── .ssh
│       └── authorized_keys
├── laniya
│   ├── .bash_logout
│   ├── .bashrc
│   ├── .profile
│   └── .ssh
│       └── authorized_keys
├── olajide
│   ├── .bash_logout
│   ├── .bashrc
│   ├── .profile
│   └── .ssh
│       └── authorized_keys
├── olakunle
│   ├── .bash_logout
│   ├── .bashrc
│   ├── .profile
│   └── .ssh
│       └── authorized_keys
├── olamide
│   ├── .bash_logout
│   ├── .bashrc
│   ├── .profile
│   └── .ssh
│       └── authorized_keys
├── olu
│   ├── .bash_logout
│   ├── .bashrc
│   ├── .profile
│   └── .ssh
│       └── authorized_keys
├── sonaike
│   ├── .bash_logout
│   ├── .bashrc
│   ├── .profile
│   └── .ssh
│       └── authorized_keys
├── tim
│   ├── .bash_logout
│   ├── .bashrc
│   ├── .profile
│   └── .ssh
│       └── authorized_keys
└── ubuntu
    ├── .bash_history
    ├── .bash_logout
    ├── .bashrc
    ├── .cache
    │   └── motd.legal-displayed
    ├── .profile
    ├── .ssh
    │   └── authorized_keys
    ├── .sudo_as_admin_successful
    ├── .viminfo
    └── Shell
        ├── deleteuser.sh
        ├── names.csv
        └── onboarding_user.sh
 
44 directories, 91 files
ubuntu@ip-172-31-20-117:~/Shell$
``` 
As an extra exercise, I created a script to delete the users that I have just created. See the script below:
```
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
```
### How the deleteuser.sh script works:
- It asks if you want to offboard/delete a users in the names.csv file or if you want to manually enter the name of the user
- It warns the user about potential data loss if they used the script to delete a user
- It prompts user to either abort the user delete or select y or Y to proceed to delete user
- It reads users to be deleted from the names.csv file
- If the user exists, it will go ahead and delete the user and it’s default home folder, if it has a default home folder. If the user does NOT have a default home folder, it proceeds to just delete the use

 
### See the `deleteuser.sh` script in action:
Be aware that this script will remove the users and all of their data
 
If you would like to back up the users' data before deleting them, PRESS 'a' or 'A' to abort now. To continue deleting the user and the data, please y or Y
y
```
Be aware that this script will remove the users and all of their data


If you would like to back up the users' data before deleting them, PRESS 'a' or 'A' to abort now. To continue deleting the user and the data, PRESS y or Y
y
Do you want to delete users in the 'names.csv' file or you would like to enter the name of the user to delete?

Enter 'k' or 'K' to enter username from keyboard, enter 'f' or 'F' read usernames from file
f
Deleting users and their data...
User: olamide and all its files and folders successfully deleted

User: olakunle and all its files and folders successfully deleted

User: byron and all its files and folders successfully deleted

User: sonaike and all its files and folders successfully deleted

User: kehinde and all its files and folders successfully deleted

User: adeyemi and all its files and folders successfully deleted

User: akinlabi and all its files and folders successfully deleted

User: chi and all its files and folders successfully deleted

User: laniya and all its files and folders successfully deleted

User: olu and all its files and folders successfully deleted

User: kemi and all its files and folders successfully deleted

User: fasesimi and all its files and folders successfully deleted

User: davies and all its files and folders successfully deleted

User: olajide and all its files and folders successfully deleted

User: tim and all its files and folders successfully deleted

User: ayo and all its files and folders successfully deleted

User: abimbola and all its files and folders successfully deleted

User: augustine and all its files and folders successfully deleted

User: hannah and all its files and folders successfully deleted

User: hadassah and all its files and folders successfully deleted

ubuntu@ip-172-31-20-117:~/Shell$ 
```
 
 
Next step is to login to the Linux server with the private key that corresponds to the public key created in the server
I will be logging in from my Mac to the Ubuntu server where these users were created.
```
olamideolajide@Olamides-MacBook-Pro ~ % ls dareykey.pem 
dareykey.pem
 
olamideolajide@Olamides-MacBook-Pro ~ % 
 
olamideolajide@Olamides-MacBook-Pro ~ % cat dareykey.pem 
-----BEGIN OPENSSH PRIVATE KEY-----
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
kmaSGj362OnCCNAAAACWRhcmVARGFyZQE=
-----END OPENSSH PRIVATE KEY-----
olamideolajide@Olamides-MacBook-Pro ~ % 
olamideolajide@Olamides-MacBook-Pro ~ % 
olamideolajide@Olamides-MacBook-Pro ~ % 
olamideolajide@Olamides-MacBook-Pro ~ % ssh -i "dareykey.pem" olamide@ec2-3-80-201-30.compute-1.amazonaws.com
Welcome to Ubuntu 20.04.1 LTS (GNU/Linux 5.4.0-1029-aws x86_64)
 
 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage
 
  System information as of Thu Dec 31 09:38:07 UTC 2020
 
  System load:  0.0               Processes:             119
  Usage of /:   22.4% of 7.69GB   Users logged in:       1
  Memory usage: 23%               IPv4 address for eth0: 172.31.20.117
  Swap usage:   0%
 
 * Introducing self-healing high availability clusters in MicroK8s.
   Simple, hardened, Kubernetes for production, from RaspberryPi to DC.
 
     https://microk8s.io/high-availability
 
49 updates can be installed immediately.
8 of these updates are security updates.
To see these additional updates run: apt list --upgradable
 
 
3 updates could not be installed automatically. For more details,
see /var/log/unattended-upgrades/unattended-upgrades.log
 
 
The programs included with the Ubuntu system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.
 
Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
applicable law.
 
olamide@ip-172-31-20-117:~$ 
olamide@ip-172-31-20-117:~$ pwd
/home/olamide
```
