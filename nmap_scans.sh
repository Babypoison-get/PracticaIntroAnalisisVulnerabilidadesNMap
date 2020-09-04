echo -e "\e[5mScan start!!!\e[0m\n"
echo -e "\e[91mFind all ports!!!\e[0m" 
xterm -T "Find all ports!!!" -hold -e nmap scanme.nmap.org &
echo -e "\e[93mFind the OS!!!\e[0m" 
xterm -T "Find the OS!!!" -hold -e nmap -O scanme.nmap.org &
echo -e "\e[92mFind the DNS information!!!\e[0m"
xterm -T "Find the DNS information!!!" -hold -e nmap --dns-servers 8.8.8.8 --script dns-srv-enum --script-args "dns-srv-enum.domain='scanme.nmap.org'" -d & 
echo -e "(also Google!!!)"
xterm -T "Find the DNS information for google.com!!!" -hold -e nmap --dns-servers 8.8.8.8 --script dns-srv-enum --script-args "dns-srv-enum.domain='google.com'" &
echo -e "\e[94mFind possible firewalls!!!\e[0m"
xterm -T "Find possible firewalls!!!" -hold -e nmap scanme.nmap.org --script firewalk -d &
echo -e "\e[95mFind if broadcast ping is enabled!!!\e[0m"
xterm -T "Find if broadcast ping is enabled" -hold -e nmap scanme.nmap.org --script broadcast-ping &
echo -e "\e[5mDone!!!\e[0m"
