#!/bin/bash
#
ip=$(hostname -I | cut -f1 -d" ")
echo "------------------------------------------------------------------------------"
read -p "Porfavor ingresa la ruta de la carpeta a compartir; " ruta
echo "En el navegador porner la siguiente dirección; $ip:9090 "
echo "------------------------------------------------------------------------------"
echo "------ Compartiendo desde la ruta; $ruta ----------------"
echo "------------------------------------------------------------------------------"
cd $ruta && python -m http.server 9090

