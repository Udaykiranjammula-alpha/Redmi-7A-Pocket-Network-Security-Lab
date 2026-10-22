# 📖 Network Lab CLI Quick Reference

Essential commands for daily network diagnosis, performance monitoring, and traffic inspection inside the Debian container on your Redmi 7A.

---

### 1. Nmap (Network Discovery & Auditing)
* **Discover all live hosts on Wi-Fi (Ping scan):**
  ```bash
  nmap -sn 192.168.1.0/24
  ```
* **Scan fast top 100 ports on a device:**
  ```bash
  nmap -F 192.168.1.1
  ```
* **Identify operating system and service versions:**
  ```bash
  nmap -sV 192.168.1.1
  ```

---

### 2. Tcpdump (Packet Capture & Traffic Analysis)
* **Capture live DNS queries (port 53):**
  ```bash
  tcpdump -i any port 53 -n
  ```
* **Capture traffic to/from a specific IP:**
  ```bash
  tcpdump -i any host 192.168.1.50 -n
  ```
* **Save captured packets to `.pcap` file (for Wireshark analysis on PC):**
  ```bash
  tcpdump -i any -w /sdcard/capture.pcap -c 100
  ```

---

### 3. Net-Tools & Diagnostic Commands
* **Show all active listening network sockets:**
  ```bash
  netstat -tuln
  ```
* **Trace packet route and network hops:**
  ```bash
  traceroute google.com
  ```
* **Monitor real-time CPU & memory consumption:**
  ```bash
  htop
  ```
