#!/bin/bash
IP_CIBLE="93.184.216.34"    # IP de example.com
INTERFACE="eth0"            # Votre interface réseau (modifiez selon vos besoins)
LOGFILE="connections.log"   # Nom du fichier pour enregistrer les résultats

# Commande principale pour capturer le trafic
sudo tcpdump -i $INTERFACE host $IP_CIBLE -nn -c 100 > $LOGFILE

# Message de confirmation après l'exécution
echo "Les connexions avec $IP_CIBLE ont été enregistrées dans $LOGFILE"
