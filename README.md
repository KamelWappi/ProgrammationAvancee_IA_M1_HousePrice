# ProgrammationAvancee_IA_M1_HousePrice
Ceci est le dépot concernant le projet du groupe 9 sur la prédiction du prix des maisons.

# Les noms des auteurs : Nadège Zongo Et Wappi Karmel

# House Prices — Mini pipeline Data Science (M1 Programmation Avancée IA)

Projet d’examen : réalisation d’un pipeline de data science de bout en bout (acquisition → EDA → prétraitement → modélisation → tuning → évaluation) sur le dataset Kaggle **House Prices: Advanced Regression Techniques**.

- **Problème** : Régression
- **Cible (target)** : `SalePrice` (prix de vente)
- **Objectif** : prédire le prix de vente à partir des caractéristiques d’un bien immobilier.

---

## Dataset

**Source Kaggle** : *House Prices: Advanced Regression Techniques*  
Compétition : `house-prices-advanced-regression-techniques`

Le dataset contient notamment :
- `train.csv` : données d’entraînement (avec la cible `SalePrice`)
- `test.csv` : données de test (sans la cible, utile si on veut soumettre sur Kaggle)
- `data_description.txt` : description détaillée des variables

> Remarque : Dans ce projet, nous travaillons principalement sur `train.csv` pour entraîner et évaluer les modèles.

---

## Structure du dépôt

├─ README.md
├─ requirements.txt
├─ data/
│ └─ raw/
│ └─ train.csv
├─ notebooks/
│ ├─ 01_acquisition_comprehension.ipynb
│ ├─ 02_eda.ipynb
│ ├─ 03_preprocessing.ipynb
│ ├─ 04_modeling_baselines.ipynb
│ └─ 05_tuning_error_analysis.ipynb
├─ reports/
│ ├─ figures/
│ └─ metrics/
└─ models/



- `data/raw/` : données brutes (train.csv)
- `notebooks/` : étapes du projet (EDA / modèle / tuning)
- `reports/figures/` : figures exportées depuis les notebooks
- `reports/metrics/` : métriques exportées (CSV)
- `models/` : modèle final sauvegardé (`joblib`)

---

## Installation & environnement

### Prérequis
- **Python 3.11** 
- Git + VS Code (ou Jupyter)

### Créer un environnement virtuel
Depuis la racine du projet :

**Windows PowerShell**
```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1

pip install -r requirements.txt

Reproduire les résultats
Ordre d’exécution (notebooks)

Exécuter les notebooks dans cet ordre :

notebooks/01_acquisition_comprehension.ipynb

Chargement des données

Dimensions, types, premières valeurs manquantes

notebooks/02_eda.ipynb

Analyse de la cible SalePrice (distribution, skewness, outliers)

Analyse des valeurs manquantes

Corrélations et relations (numériques & catégorielles)

Export des figures dans reports/figures/

notebooks/03_preprocessing.ipynb

Split train/test

Pipeline de prétraitement (imputation + encodage + scaling)

Anti data leakage (prétraitement appris uniquement sur train)

notebooks/04_modeling_baselines.ipynb

Entraînement & comparaison de 3 modèles :

Ridge Regression

RandomForestRegressor

GradientBoostingRegressor

Comparaison target brute vs log1p(target)

Export des métriques : reports/metrics/baseline_raw_vs_log1p.csv

notebooks/05_tuning_error_analysis.ipynb

Tuning hyperparamètres (RandomizedSearchCV)

Validation croisée (CV)

Évaluation finale sur test

Analyse d’erreurs (résidus)

Sauvegarde du modèle final : models/final_model.joblib

Export métriques :

reports/metrics/final_metrics.csv

reports/metrics/tuning_cv_results.csv


Reproduire les résultats
Ordre d’exécution (notebooks)

Exécuter les notebooks dans cet ordre :

notebooks/01_acquisition_comprehension.ipynb

Chargement des données

Dimensions, types, premières valeurs manquantes

notebooks/02_eda.ipynb

Analyse de la cible SalePrice (distribution, skewness, outliers)

Analyse des valeurs manquantes

Corrélations et relations (numériques & catégorielles)

Export des figures dans reports/figures/

notebooks/03_preprocessing.ipynb

Split train/test

Pipeline de prétraitement (imputation + encodage + scaling)

Anti data leakage (prétraitement appris uniquement sur train)

notebooks/04_modeling_baselines.ipynb

Entraînement & comparaison de 3 modèles :

Ridge Regression

RandomForestRegressor

GradientBoostingRegressor

Comparaison target brute vs log1p(target)

Export des métriques : reports/metrics/baseline_raw_vs_log1p.csv

notebooks/05_tuning_error_analysis.ipynb

Tuning hyperparamètres (RandomizedSearchCV)

Validation croisée (CV)

Évaluation finale sur test

Analyse d’erreurs (résidus)

Sauvegarde du modèle final : models/final_model.joblib

Export métriques :

reports/metrics/final_metrics.csv

reports/metrics/tuning_cv_results.csv





