#!/bin/bash
echo  "==================================================================
        ********°°°°°°°° Boyei bolamu na KGB_Academia °°°°°°°°°°°********
       ==================================================================
#########################################################################
#=======================================================================#
#=                      UNIVERSITE DE KINSHSA                          =#
#=                FACULTE DES SCIENCES ET TECHNOLOGIE                  =#
#=    DEPARTEMENT DE MATHEMATIQUES, STATISTIQUE ET INFORMATIQUE        =#
#=                     OPTION: Génie Informatique                      =#
#=======================================================================#
#= Li: Na ndingisa ya: Prof.Dr BOPE DOMILONGO Christian                =#
#=    Ekomami na Glody KHALIFA DAWILI pe Lisanga na ye ya KGB_Academia =#
#=°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°=#
#=°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°=#
#= Fr: Promoteur: Pr.Dr BOPE DOMILONGO Christian                       =#
#=     Ecrit par Glody KHALIFA DAWILI et son équipe de KGB_Academia    =#
#=°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°=#
#=°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°=#
#= En: Author: Pr.Dr BOPE DOMILONGO Christian                          =#
#=     Write by Glody KHALIFA DAWILI and the  KGB_Academia Team        =#
#=°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°=#
#=°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°+°=#
#=                                                                     =#                                                                
#= https://github.com/Glody KHALIFA                                    =#
#=======================================================================#
#########################################################################"

echo ""

printf "\n**********************************************\n"
printf "\n**********************************************\n"
echo -e "Tala liste ya ba paquages na biso (mdps serv) "
printf "\n**********************************************\n"
printf "Menu :\n\n"
     echo "1. Installer tout les paquets"
     echo "2. Selectionner les paquets à installer"
     echo "3. Installer localement les paquets"
     echo "4. Quit: pour quitter le programme\n"
     echo -e "5. Detecter directement les paquets en ligne puis installer"
     echo ""
     echo "****************************************************************"
     echo ""

printf "\n\n"

function instdep {
echo ""
read -p "Vos dépendances seront actualiser, voulez-vous ?? [o/n] (vous devez être connecté à internet) : " dpdc

if [ "$dpdc" = "o" ];then
sudo apt update   
sudo apt-get -f install
sudo apt --fix-broken install  
else
echo -e "Nde tomonani !"
fi
}

function Echec {
printf "\n**********************************************\n"
echo -e "Ofini na mbuma ya mabe, osengeli ko bandela!"
printf "************************************************\n\n"
exit
}

cxmenu=15
while  (( $cxmenu <= 0 || $cxmenu>9 )) 
do
read -p "Faites votre choix svp!: " cxmenu
if [[ $cxmenu =~ ^[0-9]+$ ]]; then
echo ""
else
Echec
fi
if (( $cxmenu<=0 || $cxmenu>9 )); then
echo "Choisissez un chiffre dans cette intervalle [1,9]"
fi
done

cd /home/`users`/Documents

git clone https://github.com/Glody KHALIFA/kgbacademia

sleep 5

cd kgbacademia/

echo " "
echo "Liste des fichiers disponible, Saisissez l'ordre de fichier à installés : "
echo " "

kotanga=0;

for kati in `ls $search_dir`; do
    echo $kati
    kotanga=$((kotanga +1));
done
echo "Installation en cours...(Mdps serv) !"
sudo dpkg -i `find . -type f -name '*.deb'` 

kgb=""

instdep

echo " "
until  [[ "$kgb" = "q" ]]; do
echo "Installation reussi!!!, appuiyer sur 'q' pour quitter !!!"
echo ""
read -p "Veuillez saisir le caractère 'q' pour quitter :" kgb
done
if [ "$kgb" = "q" ]; then
exit
fi

printf "\n\n***********\n"
echo "Matondo mingi !"
printf "\n\n***********\n"
printf "\n\n***********\n"

elif [ "$cxmenu" = "3" ]; then
echo ""
echo "ceux-ci sont vos Dossier existant : Bureau, Documents, Images, Modèles, 
Musique, Public, Téléchargement et Vidéos "
echo ""
read -p "Chemin d'accès du dossier vers les paquets (ex: Bureau/Documents/kgbacademia):" nzela
echo "*********************************************************************************"
echo ""

echo -e "MENU :"
echo ""
echo "1. installer tout les paquets"
echo -e "2. Séléctionner les paquets (ici, veillez à bien étiqueté les paquets)"
echo ""
read -p "Sala choix nayo kolanda na menu na biso :" choix

if [[ "$choix" = "1" ]]; then

sudo dpkg -i `find . -type f -name '*.deb'` 

rt=""
instdep
echo "???"
until  [[ "$kgb" = "q" ]]; do
echo "Installation reussi, saisissez 'q' pour quitter !!!"
echo ""
read -p "Veuillez saisir le caractère 'q' pour quitter :" kgb
done
if [ "$kgb" = "q" ]; then
exit
fi
else


if [[ -d "/home/`users`/$nzela" ]]; then
cd /home/`users`/$nzela
echo ""
read -p "Veuillez saisir le nombre des fichiers à installer :" motango

while  (( $motango <= 0 || $motango>$kotanga -1 )) 
do
read -p "Veuillez saisir le nombre des paquets à installer :" motango
echo ""
if (( $motango<=0 || $motango>$kotanga -1 )); then
echo " Le nombre des paquets doit être soit 1, soit inférieur à $kotanga. c_à_d [1, $kotanga["
echo ""
fi
done

echo " "
echo "*****************************************************************************************"
echo "Veuillez saisir $motango choix (choisissez les chiffres !!!): "
echo " "
for ((i= 1; i <=$nbr; i++)); do
read -p "Paquet $i :" bbb[i]
done

for khalifa in ${bbb[*]}; do
if (( $khalifa <= 0 || $khalifa > $kotanga ));then
echo ""
echec
echo "Le numéro du paquet doit être compris entre 1 et $kotanga; c_à_d [1,$kotanga]"
echo ""
echo "*****************************************************************************"
for ((i= 1; i <=$motango; i++)); do
read -p "Paquet $i :" bbb[i]
done
fi

done
echo "******************************************************************************"
echo " "
echo "Oponi ba paquets oyo :"
echo ""

for skl in ${bbb[*]}; do

find . -type f -name "*-$skl.deb"

done
echo ""
echo "********************************************************************************"
echo ""
cd /home/`users`/

klf="tAmponss";

if [[ -d "$klf" ]]; then

for skl in ${bbb[*]}; do

cd /home/`users`/$nzela

cp -v `find . -type f -name "*-$skl.deb"` /home/`users`/Biso_nde

done

cd /home/`users`/Biso_nde

sudo dpkg -i `find . -type f -name '*.deb'`

rm *.deb 
cd ..
rmdir Biso_nde

else

mkdir /home/`users`/Biso_nde

for skl in ${bbb[*]}; do

cd /home/`users`/$nzela

cp -v `find . -type f -name "*-$skl.deb"` /home/`users`/Biso_nde

done

cd /home/`users`/Biso_nde

sudo dpkg -i `find . -type f -name '*.deb'`

rm *.deb 
cd ..
rmdir Biso_nde

fi

else
echo "Erreur ! (mauvais chemin d'accès)"
fi
insdep
fi

elif [ "$cxmenu" = "2" ]; then

cd /home/`users`/Téléchargements

git clone https://github.com/glody-khalifa/kgbacademia

sleep 5

cd kgbacademia/

echo " "
echo "Voici la liste des nos fichiers, veuillez saisir le numéro de(s) fichier(s) pour les installés : "
echo " "

kotanga=0;

for kati in `ls $search_dir`; do
    echo $kati
    kotanga=$((kotanga +1));
done

echo ""
read -p "Veuillez saisir le nombre des fichiers à installer :" motango

while  (( $motango <= 0 || $motango>$kotanga -1 )) 
do
read -p "Veuillez saisir le nombre des paquets à installer :" motango
echo ""
if (( $motango<=0 || $motango>$kotanga -1 )); then
echo " Le nombre des paquets doit être soit 1, soit inférieur à $kotanga. c_à_d [1, $kotanga["
echo ""
fi
done

echo " "
echo "****************************************************************************************"
echo "Veuillez saisir $motango choix (choisissez les chiffres !!!): "
echo " "
for ((i= 1; i <=$motango; i++)); do

read -p "Paquet $i :" bbb[i]

done

for khalifa in ${bbb[*]}; do
if (( $khalifa <= 0 || $khalifa > $kotanga ));then
echo ""
echo "le numéro du paquet doit être compris entre 1 et $kotanga; c_à_d [1,$kotanga]"
echo ""
echo "******************************************************************************"
for ((i= 1; i <=$motango; i++)); do
read -p "Paquet $i :" bbb[i]
done
echo "******************************************************************************"
fi
done

echo "******************************************************************************"
echo " "
echo "Votre choix porte sur le(s) paquets(s) :"
echo ""

for s in ${bb[*]}; do

find . -type f -name "*-$skl.deb"

done
echo ""
echo "********************************************************************************"
echo ""
cd /home/`users`/

klf="Biso_nde";

if [[ -d "$k" ]]; then

for skl in ${bbb[*]}; do

cd /home/`users`/Téléchargements/kgbacademia/

cp -v `find . -type f -name "*-$skl.deb"` /home/`users`/Biso_nde

done

cd /home/`users`/Biso_nde

sudo dpkg -i `find . -type f -name '*.deb'`

rm *.deb 
cd ..
rmdir Biso_nde

else

mkdir /home/`users`/Biso_nde

for skl in ${bbb[*]}; do

cd /home/`users`/Téléchargements/kgbacademia/

cp -v `find . -type f -name "*-$skl.deb"` /home/`users`/Biso_nde

done

cd /home/`users`/Biso_nde

sudo dpkg -i `find . -type f -name '*.deb'`

rm *.deb 
cd ..
rmdir Biso_nde

fi

instdep

fi

elif [ "$cxmenu" = "4" ]; then
printf "\n\n°°°°°°°°°°°°°°°°°°°°°°\n"
echo "+°+°+°+ Nde tomonani mbala ya sima ! +°+°+°+"
printf "+°+°+°+°+°+°+°+°+°+°+°+°+°\n\n"
printf "+°+°+°+°+°+°+°+°+°+°+°+°+°\n\n"
exit
elif [ "$cxmenu" = "5" ];then

sudo apt install putty
sudo apt install vlc
sudo apt-get install ettercap-graphical
sudo apt install wireshark
sudo apt --fix-broken install

kgb=""
until  [[ "$kgb" = "q" ]]; do
echo "Installation réaliser avec succès veuillez saisir 'q' pour quitter !!!"
echo ""
read -p "Veuillez saisir le caractère 'q' pour quitter :" kgb
done
if [ "$kgb" = "q" ]; then
exit
fi
