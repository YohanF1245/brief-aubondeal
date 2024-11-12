# Sommaire: 
- [Présentation](#présentation-)
- [Guide d'utilisation](#utilisation-)
- [Un fichier SQL format PostgreSQL](/postgresql/aubondeal.sql)
- [Des règles de gestion](/doc/regles-gestion.md)
- [Un dictionnaire de données](/doc/bdd/dictionnaire-donnees.md)
- [Une définition de l'acronyme MERISE dans la documentation](#definition-de-lacronyme-merise)
- [RGPD](/doc/securite/rgpd.md)
- [Politique de retention](/doc/securite/politique-retention.md)
- [Un document présentant les améliorations à apporter pour cette BDD / Diagrammes fournis](/doc/proposition-amelioration.md)
- [Un document expliquant le choix du SGBDR](/doc/benchmark/benchmark-bdd.md)

# Présentation :
Vous allez contribuer à la création de "AuBonDeal", une plateforme de commerce en ligne 🚀. Cette initiative vise à proposer une solution performante pour la gestion des transactions commerciales, la mise en relation des vendeurs et acheteurs, et la gestion des produits.<br>

Votre Mission Consiste à :

-Analyse des Modèles de Données :
-Examiner et comprendre le Modèle Conceptuel de Données (MCD) et le Modèle Logique de - Données (MLD) fournis.
-Identifier les entités, attributs et relations clés afin de préparer une implémentation cohérente.
# Utilisation : 
Importer la base de données : 
Dans le terminal executez la commande suivante : 
```
psql -h hostname -U username -d database_name -f <chemin-du-fichier-sql>
```
Configurer la sauvegarde automatique : <br>
Editez au besoin
Créez un fichier ".pgpass" dans le répertoire de l'utilisateur exectutant PostgreSQL. Editez le fichier de la maniere suivante :
```
hostname:port:database:username:password
```
Dans le terminal, lancez la commande pour éditer la crontab:
```
crontab -e
 ```
Editez le ficher pour lancer le script. Exemple pour que le script ce lance toutes les nuits à 4h du matin:
```
0 4 * * * <chemin-du-script>
```
# Definition de l'acronyme MERISE
Méthode d'étude et de réalisation informatique pour les systèmes d'entreprise. <br>
Merise est une méthodologie de modélisation à usage général dans le domaine du
développement de systèmes d’information, du génie logiciel et de la gestion de projet.
Introduit pour la première fois au début des années 1980, il était largement utilisé en France.
Il a été développé et perfectionné à un point tel que la plupart des grandes organisations
gouvernementales, commerciales et industrielles françaises l'ont adopté.<br>
Merise procède à un traitement séparé des données et des processus, où la vue des données est
modélisée en trois étapes: de la conception à la physique en passant par la logique. De même,
la vue axée sur les processus passe par les trois étapes conceptuelle, organisationnelle et
opérationnelle. Ces étapes du processus de modélisation sont parallèles aux étapes du cycle de
vie: planification stratégique, étude préliminaire, étude détaillée, développement, mise en
œuvre et maintenance. C'est une méthode d'analyse basée sur le modèle entité-relation. En
utilisant Merise, vous pouvez concevoir des tables avec des relations pour créer une base de
données relationnelle.
