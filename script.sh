#!/bin/bash
# demander a l'utilisateur ou stocker le contenu (echo)
echo "Où souhaitez-vous stocker le contenu ?"

# se déplacer dans l'emplacement
cd "$emplacement" || { echo "Erreur : impossible d'accéder à l'emplacement."; exit 1; }

# créer un dossier
echo "nom du dossier à créer :"
read nom_dossier
mkdir -p "$nom_dossier"

# se deplacer dans le dossier créer
cd "$nom_dossier" || { echo "Erreur : impossible d'accéder au dossier." exit 1; }

#créer un fichier collection.txt
touch collection.txt

#demander à l'utilisateur le nom du film à ajouter
echo "quel est le nom du film à ajouter ?"

#récupérer le nom du film à ajouter au fichier collection.txt
read nom_film

#ajouter le nom du film dans le fichier collection.txt
echo "$nom_film" >> collection.txt

echo "le film '$nom_film' a été ajouté à la collection dans $emplacement/$nom_dossier/collection.txt"

#signature
echo "créé par GPT car je ne sais pas coder"