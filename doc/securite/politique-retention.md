# Politique de retention

Afin d'assurer la sécurité de nos données, nous avons mis en place une politique de sauvegarde robuste et automatisée. Chaque jour, trois copies de sauvegarde sont effectuées entre 4 et 5 heures du matin, selon la règle de sauvegarde 3-2-1. Concrètement, cela signifie :

- 3 copies de la sauvegarde quotidienne ;
- 2 supports de stockage différents pour garantir la résilience des données ;
- 1 copie externe transférée via un tunnel VPN sécurisé.
Chaque sauvegarde quotidienne est conservée pendant 15 jours, et les nouvelles écrasent automatiquement la sauvegarde la plus ancienne.<br>

Une compromission de la base de données peut être détéctée tardivement, en plus des sauvegardes journalières nous effectuerons des copies de sauvegarde de manière hebdomaires avec un roulement toutes les 5 semaines et mensuel avec un roulement annuel.<br>

Toutes les sauvegardes sont chiffrées selon l'algorithme SHA-256. La clé privée utilisée pour ce chiffrement est stockée de manière sécurisée sur un serveur HSM (Hardware Security Module), spécifiquement conçu pour la gestion de clés cryptographiques.

