#Colores
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"

#logo
clear

echo -e "$blue"

echo "     ▄▄▌ ▐ ▄▌▪  ·▄▄▄▪  ▄▄▌   ▄▄▄·  ▄▄ •"
echo "     ██· █▌▐███ ▐▄▄·██ ██•  ▐█ ▀█ ▐█ ▀ ▪"
echo "     ██▪▐█▐▐▌▐█·██▪ ▐█·██▪  ▄█▀▀█ ▄█ ▀█▄"
echo "     ▐█▌██▐█▌▐█▌██▌.▐█▌▐█▌▐▌▐█ ▪▐▌▐█▄▪▐█"
echo "      ▀▀▀▀ ▀▪▀▀▀▀▀▀ ▀▀▀.▀▀▀  ▀  ▀ ·▀▀▀▀"

echo -e "$blue"
echo "                By Rompelhd"

echo -e "$blue"

#root privilegies
if [[ $EUID -ne 0 ]]; then
        echo "(✗) No eres usuario root"
                exit 1
fi

#Dependencias
if which git >/dev/null; then
                sleep 0.25
         echo -e "$blue(GIT)$nc Instalado $blue✓"
else
		sleep 0.25
	 echo -e "$red(GIT)$nc No instalado"
	 echo -e "$blue(GIT)$nc Se esta instalando"
	 apt install git
fi

if which airmon-ng >/dev/null; then
                sleep 0.25
         echo -e "$blue(AIRMONG-NG)$nc Instalado $blue✓"
else

		sleep 0.25
         echo -e "$red(AIRMONG-NG)$nc No instalado"
         echo -e "$blue(AIRMONG-NG)$nc Se esta instalando"
         apt install aircrack-ng
fi

if which mdk3 >/dev/null; then
                sleep 0.25
         echo -e "$blue(MDK3)$nc Instalado $blue✓"
else

                sleep 0.25
         echo -e "$red(MDK3)$nc No instalado"
         echo -e "$blue(MDK3)$nc Se esta instalando"
         git clone https://github.com/wi-fi-analyzer/mdk3-master
fi

if which macchanger >/dev/null; then
                sleep 0.25
         echo -e "$blue(MACCHANGER)$nc Instalado $blue✓"
else

                sleep 0.25
         echo -e "$red(MACCHANGER)$nc No instalado"
         echo -e "$blue(MACCHANGER)$nc Se esta instalando"
         apt install macchanger
fi
