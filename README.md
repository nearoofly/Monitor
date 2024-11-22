# Monitor

Monitor est un script Bash simple permettant de surveiller et d’enregistrer les connexions réseau vers ou depuis une adresse IP spécifique ou un site web (ex. example.com). Il utilise tcpdump, un outil d’analyse réseau, pour capturer les paquets et enregistre les résultats dans un fichier.

Fonctionnalités

	•	Surveille les connexions réseau vers une adresse IP cible ou un site web.
	•	Enregistre les détails des connexions (adresses IP source/destination, ports, protocole, timestamps).
	•	Permet une analyse réseau rapide pour détecter des communications suspectes.

Prérequis

	•	Linux/Unix avec Bash.
	•	tcpdump installé. Pour l’installer :

sudo apt install tcpdump  # Sur Debian/Ubuntu
sudo yum install tcpdump  # Sur Red Hat/CentOS


	•	Droits sudo (tcpdump nécessite des permissions élevées).

Installation

	1.	Clonez le dépôt ou copiez le script.
	2.	Rendez le script exécutable :

chmod +x monitor.sh

Utilisation

	1.	Modifier la cible :
	•	Ouvrez le fichier monitor.sh et remplacez IP_CIBLE par l’IP ou l’adresse de votre cible (par exemple, l’IP de example.com).

IP_CIBLE="93.184.216.34"  # Remplacez par l'adresse IP ou cible


	2.	Lancer le script :

./monitor.sh

	•	Par défaut, le script capture les 100 premières connexions vers la cible et enregistre les résultats dans un fichier connections.log.

	3.	Vérifier les résultats :
	•	Les connexions capturées sont enregistrées dans connections.log. Vous pouvez consulter ce fichier avec :

cat connections.log

Exemple de Sortie

Voici un exemple de résultat enregistré dans connections.log :

16:20:30.123456 IP 192.168.1.10.54321 > 93.184.216.34.80: Flags [S], seq 123456789, win 65535, options [mss 1460], length 0
16:20:30.123789 IP 93.184.216.34.80 > 192.168.1.10.54321: Flags [S.], seq 987654321, ack 123456790, win 29200, options [mss 1460], length 0

Options Avancées

	•	Surveillance continue :
	•	Pour capturer un flux continu de connexions, supprimez -c 100 dans le script :

sudo tcpdump -i $INTERFACE host $IP_CIBLE -nn > $LOGFILE


	•	Modifier l’interface réseau :
	•	Remplacez eth0 par votre interface réseau (par exemple wlan0 pour le Wi-Fi).

Attention

	•	Respectez la loi : Ce script doit être utilisé uniquement pour surveiller votre propre réseau ou avec autorisation.
	•	Trafic capturé : Le fichier de log peut devenir volumineux si utilisé en mode continu. Assurez-vous d’avoir suffisamment d’espace disque.

Licence

Ce projet est sous licence Apache License 2.0. Vous êtes libre de l’utiliser, de le modifier et de le redistribuer sous certaines conditions.
