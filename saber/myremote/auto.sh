sudo cp usr/bin/remotec /usr/bin
sudo cp lib/systemd/system/remotec.service /lib/systemd/system

vim etc/remotec/remotec.ini
sudo mkdir /etc/remotec -p
sudo cp etc/remotec/remotec.ini /etc/remotec
