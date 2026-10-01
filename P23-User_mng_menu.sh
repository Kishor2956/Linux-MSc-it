#!/bin/bash

if [ $EUDI -ne 0 ]
then
	echo "Please Run With Sudo"
	exit
fi

while true
do
	echo "---USER MANAGEMENT---"
	echo "1. Create A New User"
	echo "2. Delete An Existing User"
	echo "3. Modify Usert Information"
	echo "4. Set Or Change User Password"
	echo "5. Lock a User Account"
	echo "6. Unlock a User Account"
	echo "7. Display User Information"
	echo "8. Display the Groups to Which a User Belong"
	echo "9. Display  All System User"
	echo "10. Check Whether a User Exists"
	echo "11. Display Currently Logged-In Users"
	echo "12. Change a User's  Login Shell"
	echo "13. Change a User's Home History"
	echo "14. Set Account Expiration Date"
	echo "15. Display Account Again Information"
	echo "16. Remove a User Along With Their Home Directoty"
	echo "17. Exit"
	echo "--------------------------"

	read -p "Enter Your Choice :" choice

	case $choice  in

	1) read -p "Enter Username : " user
	
	if id "$user" &>/dev/null
	then
		echo "User Allready Exists."
	else
		useradd "$user"
		echo "User Is Created."
	fi
	;;

	2) read -p "Enter Usename :" user

	if id "$user" &>/dev/null
	then
		read -p  "Are You Sure?(y/n):" ans

	if [ "$ans" = "y" ]
            then
                userdel "$user"
                echo "User Deleted."
            fi
        else
            echo "User Does Not Exist."
        fi
        ;;

        3) read -p "Enter username : " user

        if id "$user" &>/dev/null
        then
            read -p "Enter New Full Name : " name
            usermod -c "$name" "$user"
            echo "User Modified."
        else
            echo "User Does Not Exist."
        fi
        ;;

        4) read -p "Enter Username : " user

        if id "$user" &>/dev/null
        then
            passwd "$user"
        else
            echo "User Does Not Exist."
        fi
        ;;

        5) read -p "Enter Username : " user

        if id "$user" &>/dev/null
        then
            passwd -l "$user"
            echo "User Locked."
        else
            echo "User Does Not Exist."
        fi
        ;;

        6) read -p "Enter Username : " user

        if id "$user" &>/dev/null
        then
            passwd -u "$user"
            echo "User Unlocked."
        else
            echo "User Does Not Exist."
        fi
        ;;

        7) read -p "Enter Username : " user

        if id "$user" &>/dev/null
        then
            id "$user"
        else
            echo "User Does Not Exist."
        fi
        ;;

        8) read -p "Enter Username : " user

        if id "$user" &>/dev/null
        then
            groups "$user"
        else
            echo "User Does Not Exist."
        fi
        ;;

        9) echo "All System Users :"
        cut -d: -f1 /etc/passwd
        ;;

        10) read -p "Enter Username : " user

        if id "$user" &>/dev/null
        then
            echo "User Exists."
        else
            echo "User Does Not Exist."
        fi
        ;;

        who
        ;;

        11) read -p "Enter Username : " user

        if id "$user" &>/dev/null
        then
            read -p "Enter New Shell : " shell
            usermod -s "$shell" "$user"
            echo "Shell Changed."
        else
            echo "User Does Not Exist."
        fi
        ;;

        13) read -p "Enter Username : " user

        if id "$user" &>/dev/null
        then
            read -p "Enter New Home Directory : " home
            usermod -d "$home" -m "$user"
            echo "Home Directory Changed."
        else
            echo "User Does Not Exist."
        fi
        ;;

        13) read -p "Enter Username : " user

        if id "$user" &>/dev/null
        then
            read -p "Enter Expiry Date (YYYY-MM-DD): " date
            chage -E "$date" "$user"
            echo "Expiry Date Set."
        else
            echo "User Does Not Exist."
        fi
        ;;

        17) read -p "Enter Username : " user

        if id "$user" &>/dev/null
