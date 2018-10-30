sudo apt install -y samba
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.bak
sudo cp ./smb.conf /etc/samba/smb.conf
sudo service smbd restart

sudo useradd user
sudo smbpasswd -a user

sudo mkdir /home/share
