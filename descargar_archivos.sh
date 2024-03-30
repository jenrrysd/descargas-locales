#!/bin/bash
#
ip=$(ip route | awk '{print $9}' | head -1)
echo "------------------------------------------------------------------------------"
read -p "Porfavor ingresa la ruta de la carpeta a compartir; " ruta
echo "En el navegador porner la siguiente dirección; $ip:8090 "
echo "------------------------------------------------------------------------------"
echo "------ Compartiendo desde la ruta; $ruta ----------------"
echo "------------------------------------------------------------------------------"
cd $ruta && python -m http.server 8090
