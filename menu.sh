#!/bin/bash

opcion=0

while [ $opcion -ne "4" ]
do
    echo ""
    echo "===============JUEGO 7 Y MEDIO.================"
    echo ""
    echo "-------------MENU DE OPCIONES------------------"
    echo "1: INICIAR JUEGO."
    echo "2: INSTRUCCIONES."
    echo "3: NÚMERO DE JUGADORES."
    echo "4: SALIR DEL JUEGO."
    echo "----------------------------------------------"
    echo " "
    read -p "Selecciona una opción (1..4): " opcion
    echo " "

    case $opcion in 
    "1")
    script_principal="juegoPrincipal.sh"
    ./$script_principal
    ;;
    "2")
    script_instrucciones="juego.sh"
    :/$script_instrucciones
    ;;
    "3")
    ##AÑADIR LLAMADA A SCRIPT
    ;;
    "4")
    echo "FIN DEL JUEGO."
    break
    ;;
    esac

done