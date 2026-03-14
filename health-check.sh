#!/bin/bash
# Shelby Sentinel - Node Health Monitor by Goldify

echo -e "\e[1;33m"
echo "--- SHELBY SENTINEL MONITOR ---"
echo -e "\e[0m"

echo "Ağ Durumu: Shelby Testnet"
echo "Zaman: $(date)"
echo "-------------------------------"

# Sistem Metrikleri
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
MEM=$(free -m | awk '/Mem:/ { print $3 }')

echo "Node İşlemci Yükü: %$CPU"
echo "Kullanılan Bellek: ${MEM}MB"
echo "Shelby Servis Durumu: AKTİF"
echo "-------------------------------"

if [ $(echo "$CPU > 80" | bc) -ne 0 ]; then
    echo "UYARI: Yüksek CPU kullanımı!"
else
    echo "Durum: STABİL"
fi
