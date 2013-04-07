# |--------------------------------------------------------------------------------|
# |                                                                                |
# | Este programa es Software Libre; Puedes distribuirlo y/o                       |
# | modificarlo bajo los términos de la GNU General Public License                 |
# | como está publicada por la Free Software Foundation; cualquier                 |
# | versión 3 de la Licencia, o (opcionalmente) cualquier versión                  |
# | posterior. http://www.gnu.org/licenses/lgpl.html                               |
# |                                                                                |
# | Este programa es distribuido con la esperanza de que sea útil,                 |
# | pero SIN NINGUNA GARANTÍA. Vea la GNU General Public License                   |
# | para más detalles.                                                             |
#-----------------------------------------------------------------------------------

## Cyberthrone·· ##
## alfierimorillo@gmail.com ##
## cambiar ip ubuntu ##
#!/bin/bash

$1-
  ifconfig 
$2-
 sudo ifconfig eth0 down 
3_ 
 sudo ifconfig eth0 hw ether AA:AA:AA:AA:AA:AA 

4_
 sudo ifconfig eth0 up 
sleep 6 
 done 
ifdown eth0
ifconfig eth0 down
ifconfig eth0 promisc up
mimac=`ifconfig eth0 |grep eth0 |awk {'printf $5'}`
destfile="./macs_"$(echo `date "+%D-%X"` | sed -e "s/\//\./g" -e "s/:/./g")

tcpdump -vvv -i eth0 > ./.tmp 2> /dev/null &

while (true)
  do
  clear
  cat ./.tmp \
    | grep "Client-Ethernet-Address" \
    | grep -ve "Client-Ethernet-Address $mimac" \
    | awk {'print $2'} | sort | uniq |sed s/':'/''/g \
    > ./macs_nuevas.txt
  echo -e "Capturando MACs en archivo "$destfile" ...\n"
  nnmacs=$(cat ./macs_nuevas.txt | wc -l)
  echo "Nuevas Direcciones MAC Capturadas: $nnmacs"
  if [[ $nnmacs -ne 0 ]]
    then
    cat ./macs_nuevas.txt
    mv ./macs_nuevas.txt $destfile
  fi
  echo "( Control + C para parar )"
  sleep 5
done
