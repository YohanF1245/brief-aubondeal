# Proposition d'amélioration

Le schéma de base de données est en l'état dysfonctionnel. Nous recommandons plusieurs ajouts et changement afin de crééer un système plus fiable et robuste.

## 1 Table Users.
- Dans le cadre d'un site de vente, l'utilisateur devrait fournir plus de renseignements. Un pseudo n'est pas approprié pour l'activité décrite il vaudrait mieux renseigner nom et prénom pour plus de transparence dans les transactions. 
- De plus pour prévoir les échanges relation client, une addresse mail devrait être communiquée. Afin d'éviter les soucis le champ addresse mail doit être unique (pour éviter les soucis de type une même adresse mail associée a deux mots de passe differents). Cela permettrait en outre de vérifier les nouveaux comptes créés et d'envoyer un mail de réinitialisation de mots de passe en cas de perte ou d'oubli de ce dernier.
- On peut aussi envisager de récuperer l'addresse postale pour la livraison des produits (comme indiqué par le champ deliver_atO de la table orders);
- Un champ numéro de téléphone peut aussi être utile, c'est souvent un pré requis demandé par les prestataires de livraison. De surcroit, il pourrait être utilisé plus tard dans le cadre d'authentification a double facteurs.

## 2 Table Orders.
- Order_total_quantity n'a pas d'utilité. Dans le cas ou Georgette commande 3 pulls et 2 paires de chaussettes, ce champ ne permet pas facilement de retrouver les champs. Cela implique de creer des doublons dans la table associative product-order et limiter les commandes à un seul type de produit. Ce détail sera corrique dans le chapitre suivant.
- Corriger la faute de frappe deliver_atO en deliver_at

## 3 Table associative orders-products.
- L'ajout d'un champ order_quantity permettra de remplacer le champs order total en evitant les doublons dans la table. Ce qui implique un gain prévisionnel de performance car on pourait se passer de la fonction count() pour recuper le total d'article appartenant a une commande.

## 4 Table product
- Selon la nature d'un produit, il peut être assujetti a une T.V.A diffèrente, nous préconisons l'ajout d'un champ pour définir le type de tva à appliquer pour chaque produit en particulier (exemple : les produits alimentaires sont taxés a 5.5%)

## 5 Nouvelle table: stock_manager
- Le système ne determine pas explicitement qui peut interragir avec la table product, une table pour les personnes ayant le droit de créér, modifier, restocker, ou supprimer un produit est nécessaire.

## 6 Nouvelle table: password_reset
- Une table permettant de stocker les liens temporaires de réinitialisation de mots de passe des utilisateurs.