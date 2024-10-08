## Gestion de Recettes Api

## Description

Cette application est un gestionnaire de recettes de cuisine développé avec Node.js et Express pour le backend, ainsi que MySQL pour la gestion des données. Elle permet de créer, récupérer, mettre à jour et supprimer des recettes. L'application utilise Jasmine pour les tests unitaires afin de valider les différentes fonctionnalitésUD (Create, Read, Update, Delete). en utilisant expressjs et mysql pour la gestion de la base de données.

## prérequis

Avant de démarrer, assurez-vous d'avoir installé les logiciels suivants :

- Node.js (version 14+)
- MySQL (version 5.7+)
- npm (le gestionnaire de paquets Node.js)

## Technologies Utilisées

- **Node.js** : Plateforme JavaScript côté serveur.
- **Express** : Framework web pour Node.js.
- **MySQL** : Système de gestion de base de données relationnelle.
- **Jasmine** : Framework de tests pour JavaScript.
- **Postman** : Utilisé pour tester l'API.

## Installation

1. Clonez le dépôt sur votre machine locale :

```
git clone https://github.com/Mangassouba/management-recette-api.git
```

2. Accédez au répertoire du projet :

```
cd management-recette-api
```

3. Installez les dépendances du projet :

```
npm install
```

## Configuration de la base de donnée

dans le projet le fichier .env.example faut le renommé en .env et ajouter vos identifiant pour pouvoir se conncter à la base de donnée

## Utilisation

Pour démarrer l'application, exécutez la commande suivante :

```
 npm start
```

## Endpoints de l'API

## GET /recipes

- Description : Récupère toutes les recettes.

- Réponse

        [
          {
              "id": 28,
              "titre": "maffe",
              "type": "entrée",
              "ingredient": "dvs,dksd",
              "category_id": 1
          },
          {
              "id": 32,
              "titre": "plat maro",
              "type": "dessert",
              "ingredient": "mat ma nan",
              "category_id": 6
          },
          {
              "id": 33,
              "titre": "crepes",
              "type": "plat",
              "ingredient": "farine",
              "category_id": 5
          },
      ]

## POST /recipes

- Description : Crée une nouvelle recette.

- Corps de la requête :

```
    {
      "titre": "Salades Césars",
      "type": "Entrée",
      "ingredient": "Laitue, Poulet, Parmesan, Croutons",
      "category_id": 5
    }
```

- Reponse:

```
{
  "message": "Recette ajouter avec succès"
}
```

## PUT /recipes/id

- Description : Met à jour une recette existante.

- Corps de la requête :

          {
          "titre": "Salade Césars",
          "type": "Entrée",
          "ingredient": "Laitue, Poulet, Parmesan, Croutons",
          "category_id": 5
          }

- Réponse :

```

{
  "message": "Recette mise à jour avec succès"
}
```

## DELETE /recipes/id

- Description : Supprime une recette par ID.
- Réponse :

```
{
  "message": "Recette supprimée avec succès"
}
```

## GET /category

- Description : Récupère toutes les categories.

- Réponse

        [
          {
              "id": 1,
              "name": "Pizzass"
          },
          {
              "id": 2,
              "name": "crepe"
          },
          {
              "id": 5,
              "name": "Tiramisu"
          },
          {
              "id": 6,
              "name": "Tiramisusss"
          },
          {
              "id": 36,
              "name": "Pizzaria"
          }
      ]

## POST /category

- Description : Crée une nouvelle categorie.

- Corps de la requête :

```
    {
     "name": "Pizza"
    }
```

- Reponse:

```
{
  "message": "categorie ajouter avec succès"
}
```

## PUT /category/id

- Description : Met à jour une categorie existante.

- Corps de la requête :

        {
          "name": "Pizza"
        }

- Réponse :

```

{
  "message": "Categorie mise à jour avec succès"
}
```

## DELETE /category/id

- Description : Supprime une recette par ID.
- Réponse :

```
{
  "message": "Recette supprimée avec succès"
}
```

## les tests unitaires

L'application utilise Jasmine pour les tests unitaires. Pour exécuter les tests, utilisez la commande suivante :

```
npm test
```

Exemple:

![](/src/assets/images/img%20test.png)

Les tests incluent la vérification des fonctionnalités principales telles que la création, la récupération, la mise à jour, et la suppression des recettes.

## Recherche des erreurs et formatage de code

- Analyse du code: recherche des erreurs dans le code

      npm run lint

- Formatage de code

      npm run format

## Auteur

[Hama Houllah Mangassouba](https://github.com/Mangassouba)
