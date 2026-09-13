import nmap
import socket
import ipaddress

def get_local_network():
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    try:
        s.connect(("8.8.8.8", 80))
        local_ip = s.getsockname()[0]
    except:
        local_ip = "127.0.0.1"
    finally:
        s.close()

    network = ipaddress.ip_network(local_ip + "/24", strict=False)
    return str(network), local_ip

def scan_network():
    network, local_ip = get_local_network()
    
    print(f"[SCAN] Network: {network}, Local IP: {local_ip}")
    
    devices = {}
    
    # Toujours ajouter le PC local d'abord
    devices[local_ip] = {
        "ip": local_ip,
        "hostname": socket.gethostname(),
        "mac": "Local",
        "vendor": "This PC"
    }

    nm = nmap.PortScanner()
    try:
        print(f"[SCAN] Starting nmap scan...")
        nm.scan(hosts=network, arguments='-sn -PS21,22,23,25,53,80,110,135,139,143,443,445,993,995,3389 -T4')
        print(f"[SCAN] Nmap found {len(nm.all_hosts())} hosts")
        for host in nm.all_hosts():
            if host != local_ip:  # Ne pas remplacer l'entrée locale
                devices[host] = {
                    "ip": host,
                    "hostname": nm[host].hostname() if nm[host].hostname() else host,
                    "mac": nm[host]["addresses"].get("mac","Unknown") if "addresses" in nm[host] else "Unknown",
                    "vendor": "Unknown",
                }
                print(f"[SCAN] Found device: {host}")
    except Exception as e:
        print(f"[SCAN] Nmap error: {e} (continuing with local IP only)")

    result = list(devices.values())
    print(f"[SCAN] Returning {len(result)} devices")
    return result, local_ip