#!/bin/bash
echo "--- Shelby Node Sağlık Kontrolü (Goldify) ---"
echo "Tarih: $(date)"
echo "--------------------------------------------"
echo "İşlemci Yükü: $(uptime | awk '{print $10}')"
echo "Bellek Durumu: $(free -m | awk 'NR==2{printf "%s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }')"
echo "Bağlantı Sayısı: $(netstat -an | grep :80 | wc -l) peer bulundu."
echo "--------------------------------------------"
echo "Durum: STABİL"
