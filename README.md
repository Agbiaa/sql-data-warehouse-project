# Business Intelligence & Data Mining – Gestion des ventes et des livraisons

## Présentation du projet

Ce projet académique porte sur la conception et la mise en place d'une solution de **Business Intelligence (BI)** permettant d'analyser les performances commerciales et la gestion des livraisons à partir de la base de données transactionnelle `ComptoirDB`.

L'objectif est de transformer les données brutes en informations pertinentes pour faciliter l'analyse et la prise de décision, en utilisant des techniques d'intégration de données, de modélisation multidimensionnelle, d'analyse OLAP, de visualisation et de Data Mining.

## Objectifs du projet

- Concevoir un entrepôt de données (*Data Warehouse*) basé sur un schéma en étoile.
- Mettre en place un processus ETL pour extraire, transformer et charger les données.
- Développer un cube OLAP pour réaliser des analyses multidimensionnelles.
- Créer des tableaux de bord interactifs pour suivre les performances commerciales.
- Appliquer des techniques de Data Mining afin d'identifier les comportements des clients et les associations entre les produits.

## Technologies et outils utilisés

| Technologie / Outil | Utilisation |
|---|---|
| Talend Open Studio | Extraction, transformation et chargement des données (ETL) |
| Microsoft SQL Server | Gestion des bases de données et de l'entrepôt de données |
| SQL Server Analysis Services (SSAS) | Conception et développement du cube OLAP |
| Visual Studio | Développement du projet BI |
| Power BI | Création de tableaux de bord interactifs et visualisation des données |
| WEKA | Application des techniques de Data Mining |

## Architecture du projet

Le projet est organisé autour des étapes suivantes :

1. **Modélisation des données :** conception d'un schéma en étoile composé d'une table de faits centrale (`Fact_Table`) et de trois dimensions principales : Clients, Produits et Temps.
2. **Processus ETL :** extraction des données depuis des fichiers CSV, transformation avec Talend et chargement dans l'entrepôt de données.
3. **Entrepôt de données :** organisation et stockage des données dans la base `ComptoirDWH`.
4. **Analyse OLAP :** création et traitement d'un cube multidimensionnel à l'aide de SSAS.
5. **Visualisation des données :** développement de tableaux de bord interactifs avec Power BI.
6. **Data Mining :** application des algorithmes K-means et Apriori avec WEKA.

## Modélisation multidimensionnelle

Le modèle en étoile comprend :

- **Table de faits :** `Fact_Table`, contenant les mesures et les clés de liaison.
- **Dimension Clients :** `Dim_Clients`.
- **Dimension Produits :** `Dim_Produits`.
- **Dimension Temps :** `Dim_Temps`.

Cette organisation permet d'effectuer des analyses selon plusieurs axes : client, produit et période.

## Indicateurs clés de performance (KPI)

La solution permet notamment d'étudier les indicateurs suivants :

- Chiffre d'affaires total.
- Montant net des ventes.
- Quantités vendues.
- Délai de préparation.
- Délai de transport.
- Délai de livraison.
- Retards de livraison.
- Performances commerciales des clients.

## Techniques de Data Mining

Deux algorithmes ont été étudiés et appliqués avec WEKA :

- **K-means :** permet de regrouper les données en clusters présentant des caractéristiques similaires.
- **Apriori :** permet d'identifier les ensembles d'articles fréquents et de découvrir des règles d'association entre les produits.

## Résultats et visualisations

Les tableaux de bord Power BI permettent de visualiser plusieurs indicateurs et analyses :

- Chiffre d'affaires total et évolution annuelle des ventes.
- Quantités vendues par produit.
- Top 5 des clients selon leur chiffre d'affaires.
- Répartition du chiffre d'affaires par client.
- Classement des clients selon les retards de livraison.

La partie Data Mining permet également d'explorer les regroupements de transactions et les associations entre produits afin de mieux comprendre les comportements d'achat.




## Contenu du dépôt

```text
Business-Intelligence-Sales-Delivery-Analysis/
│
├── README.md
│
├── docs/
│   └── Rapport_BI.pdf
│
├── screenshots/
│   ├── star_schema.png
│   ├── etl_process.png
│   ├── olap_cube.png
│   └── powerbi_dashboard.png
│
└── results/
    └── project_results.md
```

