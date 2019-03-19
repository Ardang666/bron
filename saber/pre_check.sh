lspci -v -d:0100
lspci -v | grep -A 5 cabc | grep disable
