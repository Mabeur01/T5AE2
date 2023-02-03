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

# Baraja de cartas
baraja=(As 2 3 4 5 6 J Q K)

# Juego
while true; do
  echo "Tu puntuación actual es $puntuacion_jugador"
  read -p "Quieres pedir otra carta? (s/n): " respuesta
  if [[ $respuesta == "s" ]]; then
    carta=$((${baraja[$RANDOM % 9]}+1))
    echo "Has sacado un $carta"
    puntuacion_jugador=$(calcular_puntuacion $puntuacion_jugador $carta)
    if [[ $((puntuacion_jugador > 8)) -eq 1 ]]; then
      echo "Te has pasado de 8. Has perdido."
      exit 0
    fi
  else
    break
  fi
done

# Turno de la IA
while [[ $((puntuacion_ia < 8)) -eq 1 ]]
 do
    carta=$((${baraja[$RANDOM % 9]}+1))
    echo "La IA ha sacado un $carta"
    puntuacion_ia=$(calcular_puntuacion $puntuacion_ia $carta)
  done

  # Comprobar quién gana
if [[ $((puntuacion_jugador > puntuacion_ia && puntuacion_jugador <= 8 || puntuacion_ia > 8)) -eq 1 ]]; then
  echo "Has ganado con una puntuación de $puntuacion_jugador"
  echo "La IA ha perdido con una puntuación de $puntuacion_ia"
else
if [[ $((puntuacion_ia > puntuacion_jugador && puntuacion_ia <= 8)) -eq 1 ]]; then
  echo "La IA ha ganado con una puntuación de $puntuacion_ia"
  echo "Has perdido con una puntuación de $puntuacion_jugador"
  else
  echo "Empate."
fi
fi