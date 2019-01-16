if (($# == 1));then 
  echo "sudo useradd $1 -g svip -m -s /bin/bash"
  echo "sudo passwd $1"
  echo "sudo smbpasswd -a $1"
else
  echo "error: use command like this $0 username"
fi
