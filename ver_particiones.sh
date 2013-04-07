#!/bin/bash
df -hl > /home/$USER/particiones.txt
zenity --text-info --filename "/home/$USER/particiones.txt"
rm -rf /home/$USER/particiones.txt
