#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#Agregado 
ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/CloudRedUwu/izin/main/IP"
checking_sc() {
  useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      \033[0;36mTelegram${NC} t.me/sanmaxx"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/6285155208019"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}
checking_sc
clear

ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/CloudRedUwu/izin/main/IP | grep $MYIP | awk '{print $2}')
if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
else
Exp=$(curl -sS https://raw.githubusercontent.com/CloudRedUwu/izin/main/IP | grep $MYIP | awk '{print $3}')
fi


###########- COLOR CODE -##############
colornow=$(cat /etc/yudhynetwork/theme/color.conf)
export NC="\e[0m"
export YELLOW='\033[0;33m';
export RED="\033[0;31m" 
export COLOR1="$(cat /etc/yudhynetwork/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
export COLBG1="$(cat /etc/yudhynetwork/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')" 
WH='\033[1;37m'                   
###########- Yudhy network-##########
tram=$( free -h | awk 'NR==2 {print $2}' )
uram=$( free -h | awk 'NR==2 {print $3}' )
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
export RED='\033[0;31m'
export GREEN='\033[0;32m'

# usage
vnstat_profile=$(vnstat | sed -n '3p' | awk '{print $1}' | grep -o '[^:]*')
vnstat -i ${vnstat_profile} >/root/t1
bulan=$(date +%b)
today=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $8}')
todayd=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $8}')
today_v=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $9}')
today_rx=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $2}')
today_rxv=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $3}')
today_tx=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $5}')
today_txv=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $6}')
if [ "$(grep -wc ${bulan} /root/t1)" != '0' ]; then
    bulan=$(date +%b)
    month=$(vnstat -i ${vnstat_profile} | grep "$bulan " | awk '{print $9}')
    month_v=$(vnstat -i ${vnstat_profile} | grep "$bulan " | awk '{print $10}')
    month_rx=$(vnstat -i ${vnstat_profile} | grep "$bulan " | awk '{print $3}')
    month_rxv=$(vnstat -i ${vnstat_profile} | grep "$bulan " | awk '{print $4}')
    month_tx=$(vnstat -i ${vnstat_profile} | grep "$bulan " | awk '{print $6}')
    month_txv=$(vnstat -i ${vnstat_profile} | grep "$bulan " | awk '{print $7}')
else
    bulan=$(date +%Y-%m)
    month=$(vnstat -i ${vnstat_profile} | grep "$bulan " | awk '{print $8}')
    month_v=$(vnstat -i ${vnstat_profile} | grep "$bulan " | awk '{print $9}')
    month_rx=$(vnstat -i ${vnstat_profile} | grep "$bulan " | awk '{print $2}')
    month_rxv=$(vnstat -i ${vnstat_profile} | grep "$bulan " | awk '{print $3}')
    month_tx=$(vnstat -i ${vnstat_profile} | grep "$bulan " | awk '{print $5}')
    month_txv=$(vnstat -i ${vnstat_profile} | grep "$bulan " | awk '{print $6}')
fi
if [ "$(grep -wc yesterday /root/t1)" != '0' ]; then
    yesterday=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $8}')
    yesterday_v=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $9}')
    yesterday_rx=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $2}')
    yesterday_rxv=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $3}')
    yesterday_tx=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $5}')
    yesterday_txv=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $6}')
else
    yesterday=NULL
    yesterday_v=NULL
    yesterday_rx=NULL
    yesterday_rxv=NULL
    yesterday_tx=NULL
    yesterday_txv=NULL
fi


#add
data_ip="https://raw.githubusercontent.com/CloudRedUwu/izin/main/IP"
d2=$(date -d "$date_list" +"+%s")
d1=$(date -d "$Exp" +"+%s")
dayleft=$(( ($d1 - $d2) / 86400 ))


# // Exporting IP Address
export IP=$( curl -s https://ipinfo.io/ip/ )


# // SSH Websocket Proxy
ssh_ws=$( systemctl status ws-stunnel | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $ssh_ws == "running" ]]; then
    status_ws="${COLOR1}ON${NC}"
else
    status_ws="${RED}OFF${NC}"
fi

# // nginx
nginx=$( systemctl status nginx | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $nginx == "running" ]]; then
    status_nginx="${COLOR1}ON${NC}"
else
    status_nginx="${RED}OFF${NC}"
fi

# // SSH Websocket Proxy
xray=$( systemctl status xray | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $xray == "running" ]]; then
    status_xray="${COLOR1}ON${NC}"
else
    status_xray="${RED}OFF${NC}"
fi

function add-host(){
clear
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}               ${WH}• ADD VPS HOST •                ${NC} $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
read -rp "  New Host Name : " -e host
echo ""
if [ -z $host ]; then
echo -e "  [INFO] Type Your Domain/sub domain"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "  Press any key to back on menu"
menu
else
echo "IP=$host" > /var/lib/yudhynetwork-pro/ipvps.conf
echo ""
echo "  [INFO] Dont forget to renew cert"
echo ""
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "  Press any key to Renew Cret"
crtxray
fi
}


function updatews(){
clear
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}            ${WH}• UPDATE SCRIPT VPS •              ${NC} $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}  $COLOR1[INFO]${NC} Check for Script updates"
sleep 2
wget -q -O /root/update.sh "https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/update.sh" && chmod +x /root/update.sh
sleep 2
/root/./update.sh
rm /root/update.sh
#rm /opt/.ver
#version_up=$( curl -sS https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/version)
#echo "$version_up" > /opt/.ver

echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌────────────────────── BY ───────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}                 ${WH}• LawNetwork •${NC}                 $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}" 
echo ""
read -n 1 -s -r -p "  Press any key to back on menu"
menu
}
clear
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}               ${WH}• VPS PANEL MENU •              ${NC} $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
uphours=`uptime -p | awk '{print $2,$3}' | cut -d , -f1`
upminutes=`uptime -p | awk '{print $4,$5}' | cut -d , -f1`
uptimecek=`uptime -p | awk '{print $6,$7}' | cut -d , -f1`
cekup=`uptime -p | grep -ow "day"`
IPVPS=$(curl -s ipinfo.io/ip )
sensored_ip=$(echo $IPVPS | sed 's/\.[0-9]*\.[0-9]*$/.*.*/')
serverV=$( curl -sS https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/version)

uis="${COLOR1}Premium Version$NC"
#echo -e "$COLOR1 $NC ${WH}User Roles     ${COLOR1}: ${WH}$uis"
if [ "$cekup" = "day" ]; then
echo -e "$COLOR1 $NC ${WH}Sistema Usado  ${COLOR1}: ${WH}$uphours $upminutes $uptimecek"
else
echo -e "$COLOR1 $NC ${WH}Sistema Usado  ${COLOR1}: ${WH}$uphours $upminutes"
fi
echo -e "$COLOR1 $NC ${WH}Memoria Usado  ${COLOR1}: ${WH}$uram / $tram"
#echo -e "$COLOR1 $NC ${WH}ISP & City     ${COLOR1}: ${WH}$ISP & $CITY"
echo -e "$COLOR1 $NC ${WH}Dominio Actual ${COLOR1}: ${WH}$(cat /etc/xray/domain)"
echo -e "$COLOR1 $NC ${WH}IP-VPS         ${COLOR1}: ${WH}$sensored_ip${NC}"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 $NC ${WH}[ SSH WS : ${status_ws} ${WH}]  ${WH}[ XRAY : ${status_xray} ${WH}]   ${WH}[ NGINX : ${status_nginx} ${WH}] $COLOR1 $NC"
echo -e "$COLOR1 ${WH}Trafico${NC}        ${WH}HOY       AYER       MES   ${NC}"
echo -e "$COLOR1 ${WH}Total${NC}    ${COLOR1}  $todayd $today_v     $yesterday $yesterday_v      $month $month_v  ${NC} "
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
#echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
#echo -e "$COLOR1 ${COLOR1}Traffic${NC}      ${COLOR1}Today       Yesterday       Month   ${NC}"
#echo -e "$COLOR1 ${WH}Download${NC}   ${WH}$today_tx $today_txv      $yesterday_tx $yesterday_txv      $month_tx $month_txv   ${NC}"
#echo -e "$COLOR1 ${WH}Upload${NC}     ${WH}$today_rx $today_rxv      $yesterday_rx $yesterday_rxv      $month_rx $month_rxv   ${NC}"
#echo -e "$COLOR1 ${COLOR1}Total${NC}    ${COLOR1}  $todayd $today_v     $yesterday $yesterday_v      $month $month_v  ${NC} "
#echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "  ${WH}[${COLOR1}01${WH}]${NC} ${COLOR1}• ${WH}SSHWS   ${WH}[${COLOR1}${status_ws}${WH}]   ${WH}[${COLOR1}07${WH}]${NC} ${COLOR1}• ${WH}THEME    ${WH}[${COLOR1}Menu${WH}]  $COLOR1 $NC"   
echo -e "  ${WH}[${COLOR1}02${WH}]${NC} ${COLOR1}• ${WH}VMESS   ${WH}[${COLOR1}${status_xray}${WH}]   ${WH}[${COLOR1}08${WH}]${NC} ${COLOR1}• ${WH}BACKUP   ${WH}[${COLOR1}Menu${WH}]  $COLOR1 $NC"  
echo -e "  ${WH}[${COLOR1}03${WH}]${NC} ${COLOR1}• ${WH}VLESS   ${WH}[${COLOR1}${status_xray}${WH}]   ${WH}[${COLOR1}09${WH}]${NC} ${COLOR1}• ${WH}ADD HOST/DOMAIN  $COLOR1 $NC"  
echo -e "  ${WH}[${COLOR1}04${WH}]${NC} ${COLOR1}• ${WH}TROJAN  ${WH}[${COLOR1}${status_xray}${WH}]   ${WH}[${COLOR1}10${WH}]${NC} ${COLOR1}• ${WH}RENEW CERT       $COLOR1 $NC"  
echo -e "  ${WH}[${COLOR1}05${WH}]${NC} ${COLOR1}• ${WH}SS WS   ${WH}[${COLOR1}ON${WH}]   ${WH}[${COLOR1}11${WH}]${NC} ${COLOR1}• ${WH}SETTINGS ${WH}[${COLOR1}Menu${WH}]  $COLOR1 $NC"
echo -e "  ${WH}[${COLOR1}06${WH}]${NC} ${COLOR1}• ${WH}SET DNS ${WH}[${COLOR1}Menu${WH}] ${WH}[${COLOR1}12${WH}]${NC} ${COLOR1}• ${WH}BOT INFO   ${WH}[${COLOR1}Menu${WH}]  $COLOR1 $NC"
echo -e "  ${WH}[${COLOR1}00${WH}]${NC} ${COLOR1}• ${WH}EXIT  $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
myver="$(cat /opt/.ver)"

if [[ $serverV > $myver ]]; then
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 $NC ${WH}[${COLOR1}100${WH}]${NC} ${COLOR1}• ${RED}NUEVA ACTUALIZACIÓN DISPONIBLE ${WH}v$serverV${NC} " 
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
ltsver="『${COLOR1}Actualizar${WH}』"
up2u="updatews"
else
ltsver="『${COLOR1}Última versión${WH}』"
up2u="menu"
fi
echo -e "$COLOR1┌─────────────────────────────────────────────────┐$NC"
echo -e "$COLOR1 $NC ${WH}Version Actual     ${COLOR1}:${WH} $(cat /opt/.ver) $ltsver${NC}"
#echo -e "$COLOR1 $NC ${WH}Tipo de Usuario   ${COLOR1}: ${WH}$uis"
echo -e "$COLOR1 $NC ${WH}Nombre del Cliente ${COLOR1}:${WH} $Name${NC}"
echo -e "$COLOR1 $NC ${WH}Licencia Expira en ${COLOR1}:${WH} $dayleft Dias ${NC}"
echo -e "$COLOR1└─────────────────────────────────────────────────┘$NC"
#echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}───────────────────────┐${NC}"
#echo -e "$COLOR1 ${NC}                  ${WH}• Darnix •${NC}                 $COLOR1 $NC"
#echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e ""
dgrade() {
echo "1.5.0" > /opt/.ver
menu
}
echo -ne " ${WH}Select menu ${COLOR1}: ${WH}"; read opt
case $opt in
01 | 1) clear ; m-sshws ;;
02 | 2) clear ; m-vmess ;;
03 | 3) clear ; m-vless ;;
04 | 4) clear ; menu-trojan ;;
05 | 5) clear ; menu-ss ;;
06 | 6) clear ; menu-dns ;;
07 | 7) clear ; menu-theme ;;
08 | 8) clear ; menu-backup ;;
09 | 9) clear ; add-host ;;
10) clear ; crtxray ;;
11) clear ; menu-set ;;
12) clear ; bot ;;
99) dgrade ;;
100) clear ; $up2u ;;
x) exit ;;
00 | 0) exit ;;
*) clear ; menu ;;
esac
