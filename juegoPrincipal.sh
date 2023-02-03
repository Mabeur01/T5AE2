#!/bin/bash

echo "Bienvenido al juego del 7 y medio"

# Define las variables
puntuacion_jugador=0
puntuacion_ia=0

# Función para calcular la puntuación
calcular_puntuacion() {
  local puntuacion=0
  for carta in "$@"; do
    case $carta in
      "1") puntuacion=$((puntuacion+1)) ;;
      "2") puntuacion=$((puntuacion+2)) ;;
      "3") puntuacion=$((puntuacion+3)) ;;
      "4") puntuacion=$((puntuacion+4)) ;;
      "5") puntuacion=$((puntuacion+5)) ;;
      "6") puntuacion=$((puntuacion+6)) ;;
      "7") puntuacion=$((puntuacion+7)) ;;
      "J") puntuacion=$((puntuacion+1)) ;;
      "Q") puntuacion=$((puntuacion+1)) ;;
      "K") puntuacion=$((puntuacion+1)) ;;
    esac
  done
  echo $puntuacion
}
