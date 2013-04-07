#!/bin/bash
#
# -*- ENCODING: UTF-8 -*-
#
# Este programa es software libre. Puede redistribuirlo y/o
# modificarlo bajo los términos de la Licencia Pública General
# de GNU según es publicada por la Free Software Foundation,
# bien de la versión 2 de dicha Licencia o bien (según su
# elección) de cualquier versión posterior.
#
# Este programa se distribuye con la esperanza de que sea
# útil, pero SIN NINGUNA GARANTÍA, incluso sin la garantía
# MERCANTIL implícita o sin garantizar la CONVENIENCIA PARA UN
# PROPÓSITO PARTICULAR. Para más detalles, véase la Licencia
# Pública General de GNU.
#creado por cyberthrone
#contacto; alfierimorillo@gmail.com
#
#!/bin/sh
#
ESCANEO=$(nmap -sP 192.168.1.0/24 | grep 'to be up' | cut -d ' ' -f 2)
echo "IP ocupadas en la red :" $ESCANEO
echo "Equipos conectados a la red:" $(nmap -sP 192.168.1.0/24 | grep 'to be up' | wc -l
