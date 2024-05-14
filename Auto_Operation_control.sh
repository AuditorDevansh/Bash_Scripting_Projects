#!/bin/bash
while true; do
	echo " Automated_Operation_Control_Tool( By:-Devansh Mishra)"

	echo "--------------------------------------------------------------"

      	echo "Choose an option: "

	echo "--------------------------------------------------------------"
	echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
	echo "--------------------------------------------------------------"

	echo "0. Display current date and time"
	echo "1. Display calendar"
	echo "2. List files in current directory"
	echo "3. Display currently logged-in users"
	echo "4. Print current working directory"
	echo "5. Display system information"
	echo "6. Show disk usage"
	echo "7. Display network information"
	echo "8. Show running processes"
	echo "9. Display system memory usage"
	echo "10. Show user information"
	echo "11. Display kernel version"
	echo "12. Show available disk space"
	echo "13. Show system load"
	echo "14. Display system uptime"
	echo "15. List installed packages"
	echo "16. Show hostname"
	echo "17. Show active network connections"
	echo "18. Show file system information"
	echo "19. Show logged-in users and their processes"
	echo "20. Exit"
	echo "21. Clear Screen"

read choice
case $choice in
	0)
		echo "Current date and time: $(date)"
		echo "---------------------------------"
			;;
	1)
		echo "Calendar:"
		cal
		echo "---------------------------------"
			;;
	2)
		echo "Files in current directory:"
		ls -l
		echo "--------------------------------"
			;;
	3)
		echo "Currently logged-in users:"
		who
		echo "--------------------------------"
			;;
	4)
		echo "Current working directory:"
		pwd
		echo "--------------------------------"
			;;
	5)
		echo "System Information:"
		uname -a
		echo "-----------------------------------"
			;;
	6)
		echo "Disk Usage:"
		df -h
		echo "----------------------------------"
			;;
	7)
		echo "Network Information:"
		ifconfig
		echo "----------------------------------"
			;;
	8)
		echo "Running Processes:"
		ps aux
		echo "----------------------------------"
			;;
	9)
		echo "System Memory Usage:"
		free -m
		echo "----------------------------------"
			;;
	10)
		echo "User Information:"
		id
		echo "----------------------------------"
			;;
	11)
		echo "Kernel Version:"
		uname -r
		echo "----------------------------------"
			;;
	12)
		echo "Available Disk Space:"
		du -h --max-depth=0 /
		echo "-----------------------------------"
			;;
	13)
		echo "System Load:"
		uptime
		echo "-----------------------------------"
			;;
	14)
		echo "System Uptime:"
		uptime -p
		echo "-----------------------------------"
		        ;;
	15) 	echo "Installed Packages:"
		dpkg --get-selections
		echo "-----------------------------------"
			;;
	16)
		echo "Hostname:"
		hostname
		echo "-----------------------------------"
			;;
	17)
		echo "Active Network Connections:"
		netstat -tuln
		echo "-----------------------------------"
			;;
	18)
		echo "File System Information:"
		df -T
		echo "-----------------------------------"
			;;
	19)
		echo "Logged-in Users and Their Processes:"
		w
		echo "------------------------------------"
			;;
	20)
		echo "Exiting program."
		break
			;;
	21)
		echo "Clear Screen."
		clear
			;;
*)
	echo "Invalid option. Please select a valid option (0-21)."
;;
esac
done
