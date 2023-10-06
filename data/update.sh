#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- LawNetwork -##############
#clear
echo -e "$COLOR1 ${NC}  $COLOR1[INFO]${NC} Downloading Update File"
sleep 2
#wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/menu.sh" && chmod +x /usr/bin/menu
wget -q -O /usr/bin/menu-ss "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/menu-ss.sh" && chmod +x /usr/bin/menu-ss
#wget -q -O /usr/bin/menu-vmess "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/menu-vmess.sh" && chmod +x /usr/bin/menu-vmess
wget -q -O /usr/bin/menu-vless "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/menu-vless.sh" && chmod +x /usr/bin/menu-vless
#wget -q -O /usr/bin/menu-trojan "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/menu-trojan.sh" && chmod +x /usr/bin/menu-trojan
wget -q -O /usr/bin/menu-bot "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/menu-bot.sh" && chmod +x /usr/bin/menu-bot
wget -q -O /usr/bin/bot "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/bot" && chmod +x /usr/bin/bot
wget -q -O /usr/bin/del-bot-notif "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/del-bot-notif" && chmod +x /usr/bin/del-bot-notif
wget -q -O /usr/bin/add-bot-notif "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/add-bot-notif" && chmod +x /usr/bin/add-bot-notif

wget -q -O /usr/bin/menu-set "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/menu-set.sh" && chmod +x /usr/bin/menu-set
wget -q -O /usr/bin/menu-theme "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/menu-theme.sh" && chmod +x /usr/bin/menu-theme
wget -q -O /usr/bin/add-bot-panel "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/add-bot-panel" && chmod +x /usr/bin/add-bot-panel
wget -q -O /usr/bin/hapus-bot "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/hapus-bot" && chmod +x /usr/bin/hapus-bot
wget -q -O /usr/bin/restart-bot "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/restart-bot" && chmod +x /usr/bin/restart-bot
wget -q -O /usr/bin/menu-ip "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/menu-ip.sh" && chmod +x /usr/bin/menu-ip
wget -q -O /usr/bin/menu-tor "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/menu-tor.sh" && chmod +x /usr/bin/menu-tor
wget -q -O /usr/bin/autoboot "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/autoboot.sh" && chmod +x /usr/bin/autoboot
wget -q -O /usr/bin/menu-tcp "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/menu-tcp.sh" && chmod +x /usr/bin/menu-tcp
wget -q -O /usr/bin/rebootvps "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/rebootvps.sh" && chmod +x /usr/bin/rebootvps
wget -q -O /usr/bin/menu-dns "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/menu-dns.sh" && chmod +x /usr/bin/menu-dns
wget -q -O /usr/bin/info "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/info.sh" && chmod +x /usr/bin/info
wget -q -O /usr/bin/mspeed "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/menu-speedtest.sh" && chmod +x /usr/bin/mspeed
wget -q -O /usr/bin/mbandwith "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/menu-bandwith.sh" && chmod +x /usr/bin/mbandwith
wget -q -O /usr/bin/restart "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/restart.sh" && chmod +x /usr/bin/restart
wget -q -O /usr/bin/update "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/update.sh" && chmod +x /usr/bin/update
#echo -e " [INFO] Update Successfully"
wget -q -O /opt/.ver "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/version"
wget -q -O /usr/bin/autoboot "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/autoboot.sh" && chmod +x /usr/bin/autoboot
wget -q -O /usr/bin/hidessh "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/hidessh" && chmod +x /usr/bin/hidessh
wget -q -O /usr/bin/runbot "https://raw.githubusercontent.com/CloudRedUwu/mysc/main/websocket/nontls.sh" && chmod +x /usr/bin/runbot
echo ""
#sleep 2;

# 1.0.6
cd; #clear
wget -q https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/speedtest.sh; chmod +x speedtest.sh && ./speedtest.sh && rm speedtest.sh
wget -q -O /usr/bin/index "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/index" && chmod +x /usr/bin/index
#agregados 
wget -q -O /usr/bin/m-vmess "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/m-vmess" && chmod +x /usr/bin/m-vmess
wget -q -O /usr/bin/addws "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/addws" && chmod +x /usr/bin/addws
wget -q -O /usr/bin/delws "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/delws" && chmod +x /usr/bin/delws
wget -q -O /usr/bin/cekws "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/cekws" && chmod +x /usr/bin/cekws
wget -q -O /usr/bin/renewws "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/renewws" && chmod +x /usr/bin/renewws

wget -q -O /usr/bin/delexp "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/delexp" && chmod +x /usr/bin/delexp
wget -q -O /usr/bin/addssh "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/addssh" && chmod +x /usr/bin/addssh
wget -q -O /usr/bin/renewssh "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/renewssh" && chmod +x /usr/bin/renewssh
wget -q -O /usr/bin/delssh "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/delssh" && chmod +x /usr/bin/delssh
wget -q -O /usr/bin/member "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/member" && chmod +x /usr/bin/member
wget -q -O /usr/bin/cekssh "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/cekssh" && chmod +x /usr/bin/cekssh
wget -q -O /usr/bin/m-sshws "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/m-sshws" && chmod +x /usr/bin/m-sshws
wget -q -O /usr/bin/ceklim "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/ceklim" && chmod +x /usr/bin/ceklim

wget -q -O /usr/bin/cekvless "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/cekvless" && chmod +x /usr/bin/cekvless
wget -q -O /usr/bin/m-vless "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/m-vless" && chmod +x /usr/bin/m-vless
wget -q -O /usr/bin/renewvless "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/renewvless" && chmod +x /usr/bin/renewvless
wget -q -O /usr/bin/delvless "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/delvless" && chmod +x /usr/bin/delvless
wget -q -O /usr/bin/addvless "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/addvless" && chmod +x /usr/bin/addvless


# 1.0.7
wget -q -O /usr/bin/menu-ssh "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/menu-ssh.sh" && chmod +x /usr/bin/menu-ssh


# 1.1.0
cd; clear; mkdir -p /etc/lukman
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/menu-backup.sh" && chmod +x /usr/bin/menu-backup
wget -q -O /etc/lukman/dependencies.sh raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/v1.1.0/dependencies.sh; bash /etc/lukman/dependencies.sh
wget -q -O /usr/bin/backup raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/v1.1.0/backup.sh; chmod 755 /usr/bin/backup
wget -q -O /usr/bin/autobackup raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/v1.1.0/autobackup.sh; chmod 755 /usr/bin/autobackup
wget -q -O /usr/bin/restore raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/v1.1.0/restore.sh; chmod 755 /usr/bin/restore
wget -q -O /usr/bin/backup_setting raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/v1.1.0/bset.sh; chmod 755 /usr/bin/backup_setting

wget -q -O /usr/bin/menu-vmess "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/menu-vmess.sh" && chmod +x /usr/bin/menu-vmess
wget -q -O /usr/bin/menu-trojan "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/menu-trojan.sh" && chmod +x /usr/bin/menu-trojan
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/menu.sh" && chmod +x /usr/bin/menu

=============================================================================================
rm /opt/.ver
version_up=$( curl -sS https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/version)
echo "$version_up" > /opt/.ver
=============================================================================================

clear
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}            ${WH}• UPDATE SCRIPT VPS •              ${NC} $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}  $COLOR1[INFO]${NC} Check for Script updates [done]"
echo -e "$COLOR1 ${NC}  $COLOR1[INFO]${NC} Downloading Update File  [done]"
echo -e " 
   $COLOR1[INFO] ${NC}Changelogs on v1.4.0 :
     ➢ notls y se cambio dropbear
   $COLOR1[INFO] ${NC}Changelogs on v1.5.0 :
     ➢ Actualización español 30
     ➢ Se corrigió v2ray user
     ➢ Se anadió helium y bot
   $COLOR1[INFO] ${NC}Changelogs on v1.6.0 :
     ➢ Cambio en la estructura
   $COLOR1[INFO] ${NC}Changelogs on v1.7.0 :
     ➢ Cambio vmess y ssh
     from 00.00 to 05.00 WIB"
echo ""
echo -e "$COLOR1 ${NC}  $COLOR1[INFO]${NC} Successfully Up To Date!"
