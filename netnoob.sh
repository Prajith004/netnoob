#!/bin/bash

# Simple Network & Information Gathering Toolkit

echo "--------------------------------------------"
echo "     NETNOOB TOOLKIT"
echo "--------------------------------------------"

while true; do
    echo ""
    echo "Choose an option:"
    echo "1) Show IP configuration (ifconfig / ip)"
    echo "2) Show active network connections (netstat / ss)"
    echo "3) Ping a host"
    echo "4) DNS Lookup (nslookup / dig)"
    echo "5) Traceroute to a host"
    echo "6) Scan open ports (nmap)"
    echo "7) Get HTTP headers (curl)"
    echo "8) Exit"
    echo ""
    read -p "Enter choice: " choice

    case $choice in
        
        1)
            echo "----- IP Configuration -----"
            if command -v ip &>/dev/null; then
                ip addr show
            else
                ifconfig
            fi
            ;;
        
        2)
            echo "----- Active Connections -----"
            if command -v ss &>/dev/null; then
                ss -tulnp
            else
                netstat -tulnp
            fi
            ;;
        
        3)
            read -p "Enter host to ping: " host
            ping -c 4 $host
            ;;
        
        4)
            read -p "Enter domain: " domain
            if command -v dig &>/dev/null; then
                dig $domain
            else
                nslookup $domain
            fi
            ;;
        
        5)
            read -p "Enter host: " host
            traceroute $host
            ;;
        
        6)
            read -p "Enter target IP/Domain to scan: " target
            echo "Scanning top ports..."
            nmap -sV $target
            ;;
        
        7)
            read -p "Enter URL (example: http://example.com): " url
            curl -I $url
            ;;
        
        8)
            echo "Exiting... Goodbye!"
            exit 0
            ;;
        
        *)
            echo "Invalid option, try again."
            ;;
    esac
done

