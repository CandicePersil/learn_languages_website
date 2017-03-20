#!/bin/bash

if [ $# == 1 ] && [ "$1" -ge "1" ] && [ "$1" -le "32767" ]
then
  nb_rand=$(($RANDOM*$1/32767))
else  
  nb_rand=$(($RANDOM*10/32767))
fi
  
echo -n "Bonjour, comment vous-appelez-vous ? "
read nom
echo "Très bien, $nom, on va faire un jeu..."
echo -n "Je pense à un nombre, quel est ce nombre ? "
read nmb

compteur=0
while [ $nmb != $nb_rand ] 
do
  if [ "$nmb" -gt "$nb_rand" ]
  then 
      echo "Non, le nombre est plus petit."
  else 
      echo "Non, le nombre est plus grand."
  fi
  echo -n "Nouveau nombre : "
  read nmb
  (( compteur++ ))
done

if [ $compteur == 0 ]
then
  echo "Bravo ! Tu as trouvé le nombre du premier coups !"
else
  echo "Bravo ! Tu as trouvé le nombre ! En (seulement) $compteur coups !"
fi
