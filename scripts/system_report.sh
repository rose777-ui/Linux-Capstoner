echo "===== SYSTEM INFORMATION REPORT ====="

echo "Hostname:"
hostname

echo ""

echo "Current User:"
whoami

echo ""

echo "Date:"
date

echo ""

echo "Operating System:"
lsb_release -d

echo ""

echo "Kernel Version:"
uname -r

echo ""

echo "Memory Usage:"
free -h

echo ""

echo "Disk Usage:"
df -h

echo ""

echo "IP Address:"
hostname -I

echo ""

echo "System Uptime:"
uptime
