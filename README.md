# Network & Information Gathering Toolkit (NETNOOB)

A simple Bash script that contains basic Linux network tools, information-gathering tools, and scanning tools.

## Features

- View IP configuration  
- Show active network connections  
- Ping any host  
- Perform DNS lookups  
- Run traceroute  
- Scan open ports using Nmap  
- Fetch HTTP headers using curl  

## Requirements

Make sure these tools exist on your Linux system:

- `ip` / `ifconfig`
- `ss` / `netstat`
- `ping`
- `dig` / `nslookup`
- `traceroute`
- `nmap`
- `curl`

### Install missing tools

```bash
sudo apt install net-tools dnsutils traceroute nmap curl
```

## Installation

1. Download or clone the project
2. Navigate to the folder
3. Make the script executable:

```bash
chmod +x netnoob.sh
```

4. Run the script:

```bash
./netnoob.sh
```


