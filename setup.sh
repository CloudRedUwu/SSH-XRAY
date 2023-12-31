#!/bin/bash

dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
BURIQ () {
    curl -sS https://raw.githubusercontent.com/CloudRedUwu/izin/main/IP > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f  /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f  /root/tmp
}
# https://raw.githubusercontent.com/CloudRedUwu/izin/main/IP 
MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/CloudRedUwu/izin/main/IP | grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/CloudRedUwu/izin/main/IP | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
############# LawNET #############
#Text Coloring
clear
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
tyblue='\e[1;36m'
NC='\e[0m'
purple() { echo -e "\\033[35;1m${*}\\033[0m"; }
tyblue() { echo -e "\\033[36;1m${*}\\033[0m"; }
yellow() { echo -e "\\033[33;1m${*}\\033[0m"; }
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
############# LawNET #############

#System version number
cd
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi

localip=$(hostname -I | cut -d\  -f1)
hst=( `hostname` )
dart=$(cat /etc/hosts | grep -w `hostname` | awk '{print $2}')
if [[ "$hst" != "$dart" ]]; then
echo "$localip $(hostname)" >> /etc/hosts
fi
mkdir -p /etc/xray


echo -e "
╔════════════════════════════════════╗
║               DARNIX               ║
╚════════════════════════════════════╝"
echo -e "[ ${tyblue}NOTES${NC} ] AUTO INSTALL SCRIPT.... "
sleep 1
echo -e "[ ${tyblue}NOTES${NC} ] Multi path, Multi port, support debian 10 , Ubuntu 20-18"
sleep 2
echo -e "[ ${green}INFO${NC} ] By darnix"
sleep 1
echo -e "[ ${green}INFO${NC} ] t.me/CloudRedUwu"
clear

secs_to_human() {
    echo "Installation time : $(( ${1} / 3600 )) hours $(( (${1} / 60) % 60 )) minute's $(( ${1} % 60 )) seconds"
}
start=$(date +%s)
ln -fs /usr/share/zoneinfo/America/Mexico_City /etc/localtime
sysctl -w net.ipv6.conf.all.disable_ipv6=1 >/dev/null 2>&1
sysctl -w net.ipv6.conf.default.disable_ipv6=1 >/dev/null 2>&1

coreselect=''
cat> /root/.profile << END
# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n || true
clear
END

chmod 644 /root/.profile
clear
echo -e "
╔════════════════════════════════════╗
║               DARNIX               ║
╚════════════════════════════════════╝"
echo -e "[ ${green}INFO${NC} ] Preparando archivos de instalación 🛠"
apt install git curl -y >/dev/null 2>&1
echo -e "[ ${green}INFO${NC} ] Muy bien... el archivo de instalación está listo. 📡"

clear
echo -e "
╔════════════════════════════════════╗
║               DARNIX               ║
╚════════════════════════════════════╝"
echo -ne "[ ${green}INFO${NC} ] Checking permission: ."; sleep .8
clear
echo -e "
╔════════════════════════════════════╗
║               DARNIX               ║
╚════════════════════════════════════╝"
echo -ne "[ ${green}INFO${NC} ] Checking permission: .."; sleep .8
clear
echo -e "
╔════════════════════════════════════╗
║               DARNIX               ║
╚════════════════════════════════════╝"
echo -ne "[ ${green}INFO${NC} ] Checking permission: ..."; sleep .8
clear
echo -e "
╔════════════════════════════════════╗
║               DARNIX               ║
╚════════════════════════════════════╝"
echo -ne "[ ${green}INFO${NC} ] Checking permission: ...."; sleep .8
clear 
echo -e "
╔════════════════════════════════════╗
║               DARNIX               ║
╚════════════════════════════════════╝"
echo -ne "[ ${green}INFO${NC} ] Checking permission: ....."; sleep .8
clear
echo -e "
╔════════════════════════════════════╗
║               DARNIX               ║
╚════════════════════════════════════╝"
echo -ne "[ ${green}INFO${NC} ] Checking permission: ."; sleep .8
clear
echo -e "
╔════════════════════════════════════╗
║               DARNIX               ║
╚════════════════════════════════════╝"
echo -ne "[ ${green}INFO${NC} ] Checking permission: .."; sleep .8
clear
echo -e "
╔════════════════════════════════════╗
║               DARNIX               ║
╚════════════════════════════════════╝"
echo -ne "[ ${green}INFO${NC} ] Checking permission: ..."; sleep .8
clear
echo -e "
╔════════════════════════════════════╗
║               DARNIX               ║
╚════════════════════════════════════╝"
echo -ne "[ ${green}INFO${NC} ] Checking permission: ...."; sleep .8
clear 
echo -e "
╔════════════════════════════════════╗
║               DARNIX               ║
╚════════════════════════════════════╝"
echo -ne "[ ${green}INFO${NC} ] Checking permission: ....."; sleep .8

#echo -ne "[ ${green}INFO${NC} ] Verificar permisos: éxito 😁"
PERMISSION
if [ -f /home/needupdate ]; then
red "Su script debe actualizarse primero !"
exit 0
elif [ "$res" = "Permission Accepted..." ]; then
green "Permission Accepted!"
else
red "Permission Denied!"
rm setup.sh > /dev/null 2>&1
sleep 10
exit 0
fi
sleep 3
mkdir -p /etc/yudhynetwork
mkdir -p /etc/yudhynetwork/theme
mkdir -p /var/lib/yudhynetwork-pro >/dev/null 2>&1
echo "IP=" >> /var/lib/yudhynetwork-pro/ipvps.conf

if [ -f "/etc/xray/domain" ]; then
echo ""
echo -e "[ ${green}INFO${NC} ] Script Already Installed"
echo -ne "[ ${yell}WARNING${NC} ] Do you want to install again ? (y/n)? "
read answer
if [ "$answer" == "${answer#[Yy]}" ] ;then
rm setup.sh
sleep 10
exit 0
else
clear
fi
fi

echo ""
wget -q https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/dependencies.sh;chmod +x dependencies.sh;./dependencies.sh
rm dependencies.sh
clear

yellow "AGREGUE UN DOMINIO VALIDO"
echo " "
read -rp "Ingrese su dominio aqui: " -e pp
echo "$pp" > /root/domain
echo "$pp" > /root/scdomain
echo "$pp" > /etc/xray/domain
echo "$pp" > /etc/xray/scdomain
echo "IP=$pp" > /var/lib/yudhynetwork-pro/ipvps.conf

############# LawNET #############
#THEME RED
cat <<EOF>> /etc/yudhynetwork/theme/red
BG : \E[40;1;41m
TEXT : \033[0;31m
EOF
#THEME BLUE
cat <<EOF>> /etc/yudhynetwork/theme/blue
BG : \E[40;1;44m
TEXT : \033[0;34m
EOF
#THEME GREEN
cat <<EOF>> /etc/yudhynetwork/theme/green
BG : \E[40;1;42m
TEXT : \033[0;32m
EOF
#THEME YELLOW
cat <<EOF>> /etc/yudhynetwork/theme/yellow
BG : \E[40;1;43m
TEXT : \033[0;33m
EOF
#THEME MAGENTA
cat <<EOF>> /etc/yudhynetwork/theme/magenta
BG : \E[40;1;43m
TEXT : \033[0;33m
EOF
#THEME CYAN
cat <<EOF>> /etc/yudhynetwork/theme/cyan
BG : \E[40;1;46m
TEXT : \033[0;36m
EOF
#THEME CONFIG
cat <<EOF>> /etc/yudhynetwork/theme/color.conf
blue
EOF
############# LawNET #############

#install ssh ovpn
echo -e "${tyblue}.------------------------------------------.${NC}"
echo -e "${tyblue}|     PROCESS INSTALLED SSH & OPENVPN      |${NC}"
echo -e "${tyblue}'------------------------------------------'${NC}"
sleep 2
clear
wget https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
#Install Xray
echo -e "${tyblue}.------------------------------------------.${NC}"
echo -e "${tyblue}|          PROCESS INSTALLED XRAY          |${NC}"
echo -e "${tyblue}'------------------------------------------'${NC}"
sleep 2
clear
wget https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/ins-xray.sh && chmod +x ins-xray.sh && ./ins-xray.sh
#Install SSH Websocket
echo -e "${tyblue}.------------------------------------------.${NC}"
echo -e "${tyblue}|      PROCESS INSTALLED WEBSOCKET SSH     |${NC}"
echo -e "${tyblue}'------------------------------------------'${NC}"
sleep 2
clear
wget https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/insshws.sh && chmod +x insshws.sh && ./insshws.sh
clear
wget https://raw.githubusercontent.com/darnix1/mysc/main/websocket/nontls.sh && chmod +x nontls.sh && ./nontls.sh
clear
#Install OHP Websocket
echo -e "${tyblue}.------------------------------------------.${NC}"
echo -e "${tyblue}|          PROCESS INSTALLED OHP           |${NC}"
echo -e "${tyblue}'------------------------------------------'${NC}"
sleep 2
clear
wget https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/ohp.sh && chmod +x ohp.sh && ./ohp.sh
#Install AutoBackup
echo -e "${tyblue}.------------------------------------------.${NC}"
echo -e "${tyblue}|          PROCESS INSTALLED AUTO BACKUP           |${NC}"
echo -e "${tyblue}'------------------------------------------'${NC}"
sleep 2
clear
wget https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/set-br.sh && chmod +x set-br.sh && ./set-br.sh
wget https://raw.githubusercontent.com/driwwstore/project/main/limit/limit.sh && chmod +x limit.sh && ./limit.sh
#Download Extra Menu
echo -e "${tyblue}.------------------------------------------.${NC}"
echo -e "${tyblue}|           DOWNLOAD EXTRA MENU            |${NC}"
echo -e "${tyblue}'------------------------------------------'${NC}"
sleep 2
wget https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/update.sh && chmod +x update.sh && ./update.sh
clear

############# LawNET #############

cat> /root/.profile << END
# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n || true
clear
menu
#vnstat -d
#vnstat -m
END
chmod 644 /root/.profile

############# LawNET #############

if [ -f "/root/log-install.txt" ]; then
rm /root/log-install.txt > /dev/null 2>&1
fi
if [ -f "/etc/afak.conf" ]; then
rm /etc/afak.conf > /dev/null 2>&1
fi
if [ ! -f "/etc/log-create-user.log" ]; then
echo "Log All Account " > /etc/log-create-user.log
fi
history -c
serverV=$( curl -sS https://raw.githubusercontent.com/CloudRedUwu/SSH-XRAY/main/data/version  )
echo $serverV > /opt/.ver
aureb=$(cat /home/re_otm)
b=11
if [ $aureb -gt $b ]
then
gg="PM"
else
gg="AM"
fi
curl -sS ifconfig.me > /etc/myipvps

############# LawNET #############

echo " "
echo "Instalacion Completada!!"
echo " "
echo "=========================[SCRIPT PREMIUM]========================"
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "    [INFORMASI SSH ]" | tee -a log-install.txt
echo "    -------------------------" | tee -a log-install.txt
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - Stunnel4                : 447, 777"  | tee -a log-install.txt
echo "   - Dropbear                : 109, 143"  | tee -a log-install.txt
echo "   - SSH Websocket           : 80"  | tee -a log-install.txt
echo "   - SSH SSL Websocket       : 443"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "    [INFORMASI  Badvpn, Nginx]" | tee -a log-install.txt
echo "    ---------------------------" | tee -a log-install.txt
echo "   - Badvpn                  : 7100-7900"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "    [INFORMASI Shadowsocks-R & Shadowsocks]"  | tee -a log-install.txt
echo "    ---------------------------------------" | tee -a log-install.txt
echo "   - Websocket Shadowsocks   : 443"  | tee -a log-install.txt
echo "   - Shadowsocks GRPC        : 443"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "    [INFORMASI XRAY]"  | tee -a log-install.txt
echo "    ----------------" | tee -a log-install.txt
echo "   - Xray Vmess Ws Tls       : 443"  | tee -a log-install.txt
echo "   - Xray Vless Ws Tls       : 443"  | tee -a log-install.txt
echo "   - Xray Vmess Ws None Tls  : 80"  | tee -a log-install.txt
echo "   - Xray Vless Ws None Tls  : 80"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "    [INFORMASI TROJAN]"  | tee -a log-install.txt
echo "    ------------------" | tee -a log-install.txt
echo "   - Websocket Trojan        : 443"  | tee -a log-install.txt
echo "   - Trojan GRPC             : 443"  | tee -a log-install.txt
echo "   --------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Auto Reboot On           : $aureb:00 $gg GMT +7" | tee -a log-install.txt
echo "   - Custom Path " | tee -a log-install.txt
echo "   - Auto Backup Data" | tee -a log-install.txt
echo "   - AutoKill Multi Login User" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Fully Automatic Script" | tee -a log-install.txt
echo "   - VPS Settings" | tee -a log-install.txt
echo "   - Admin Control" | tee -a log-install.txt
echo "   - Backup & Restore Data" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "=========================[SCRIPT PREMIUM]========================"
echo ""
sleep 3
echo -e "    ${tyblue}.------------------------------------------.${NC}"
echo -e "    ${tyblue}|     SUCCESFULLY INSTALLED THE SCRIPT     |${NC}"
echo -e "    ${tyblue}'------------------------------------------'${NC}"

rm /root/cf.sh >/dev/null 2>&1
rm /root/setup.sh >/dev/null 2>&1
rm /root/insshws.sh 
rm /root/update.sh

echo ""
echo -e "Setting up autorefresh on xray user login"
#echo -ne "Choose between 1-30 minutes: "; read afresh
wget -q -O /usr/bin/clear-log raw.githubusercontent.com/LawNetwork/Autoscript/main/xray/clear-log
chmod +x /usr/bin/clear-log; cd
wget -q raw.githubusercontent.com/LawNetwork/Autoscript/main/addons/crontab.sh
chmod +x crontab.sh; ./crontab.sh; rm crontab.sh

echo "#!/bin/bash
bash <(curl -L -s https://s.id/netflixchecker) -E -M 4" > /usr/bin/regionchecker
chmod +x /usr/bin/regionchecker

sudo mkdir -p /etc/bot   # Crea la carpeta /etc/bot si no existe
sudo touch /etc/bot/.bot.db   # Crea el archivo .bot.db dentro de /etc/bot

echo "Cambiar la versión a la más antigua para poder actualizar manualmente.."
echo "0.0.1" > /opt/.ver; sleep 2
echo "Cambiar la versión a la más antigua para poder actualizar manualmente.. done"

echo ""
echo -e "   ${tyblue}INSTALACION TERMINADA REINICIO EN 10S${NC}"

sleep 10
reboot
