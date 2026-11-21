
#!/usr/bin/env bash

set -e

echo "========== OS INFORMATION =========="
cat /etc/os-release
echo
echo "Kernel version:"
uname -r

echo
echo "========== USERS WITH BASH =========="
awk -F: '$7 == "/bin/bash" {print $1}' /etc/passwd

echo
echo "========== OPEN PORTS =========="
sudo ss -tulnp

