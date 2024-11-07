# Dictionnaire de données

| Entité  | Attribut             | Type    | Longueur | Contrainte                              | Description                               |
|---------|----------------------|---------|----------|-----------------------------------------|-------------------------------------------|
| Users   | user_UUID            | UUID    |          | PRIMARY KEY                             | Identifiant unique de l'utilisateur       |
|         | user_pseudo          | VARCHAR | 50       |                                         | Pseudo de l'utilisateur                   |
|         | username             | VARCHAR | 50       |                                         | Nom de l'utilisateur                      |
|         | user_password        | VARCHAR | 30       |                                         | Mot de passe utilisateur                  |
|         | created_at           | DATE    |          |                                         | Date de création                          |
| Orders  | order_number         | VARCHAR | 15       | PRIMARY KEY                             | Numero de la commande                     |
|         | order_total_cost_HT  | NUMERIC | (10,2)   | CHECK (order_total_cost_HT>0=           | Montant HT de la commande                 |
|         | order_total_quantity | INT     |          |                                         | Total d'articles de la commande           |
|         | created_at           | DATE    |          |                                         | Date de création de la commande           |
|         | deliver_ato          | DATE    |          |                                         | Date de livraison                         |
|         | user_UUID            | UUID    |          | FOREIGN KEY REFERENCES Users(user_UUID) | Référence a l'user UUID de la table users |
| Product | product_UUID         | UUID    |          | PRIMARY KEY                             | Identifiant unique du produit             |
|         | product_name         | VARCHAR | 50       |                                         | Nom du produit                            |
|         | product_description  | VARCHAR | 200      |                                         | Description du produit                    |
|         | product_price        | NUMERIC | (10,2)   |                                         | Prix du produit                           |
|         | product_quantity     | INT     |          |                                         | Quantité en stock du produit              |
|         | created_at           | DATE    |          |                                         | Date de creation du produit               |
|         | updated_at           | DATE    |          |                                         | Date de mise a jour du produit            |
|         |                      |         |          |                                         |                                           |
