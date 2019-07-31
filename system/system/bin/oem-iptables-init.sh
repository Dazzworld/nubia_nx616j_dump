#!/system/bin/sh
IP6TABLES=/system/bin/ip6tables
IPTABLES=/system/bin/iptables
$IPTABLES -t nat -A OUTPUT -p tcp -d 127.0.0.1 --dport 80 -j REDIRECT --to-port 8080