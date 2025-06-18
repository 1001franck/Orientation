# 🌍 Guide d'Orientation pour les Études à l'Étranger

[![Docker](https://img.shields.io/badge/Docker-Ready-blue?logo=docker)](https://www.docker.com/)
[![HTML5](https://img.shields.io/badge/HTML5-Valid-green?logo=html5)](https://validator.w3.org/)
[![CSS3](https://img.shields.io/badge/CSS3-Valid-blue?logo=css3)](https://jigsaw.w3.org/css-validator/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

> **Une plateforme complète pour guider les étudiants dans leur choix d'études à l'international**

Ce projet est un guide interactif et complet pour les étudiants souhaitant poursuivre leurs études à l'étranger. Il fournit des informations détaillées sur les universités, les coûts, les visas, la vie étudiante et les opportunités dans différents pays du monde.

## 📋 Table des Matières

- [🚀 Fonctionnalités](#-fonctionnalités)
- [🌍 Pays Disponibles](#-pays-disponibles)
- [📁 Structure du Projet](#-structure-du-projet)
- [⚡ Démarrage Rapide](#-démarrage-rapide)
- [🐳 Déploiement avec Docker](#-déploiement-avec-docker)
- [🔧 Installation Manuelle](#-installation-manuelle)
- [📖 Guide d'Utilisation](#-guide-dutilisation)
- [🎨 Personnalisation](#-personnalisation)
- [🤝 Contribution](#-contribution)
- [📝 Licence](#-licence)
- [📞 Contact](#-contact)

## 🚀 Fonctionnalités

### ✨ Fonctionnalités Principales
- **🌍 18 pays couverts** avec informations détaillées
- **🎓 Base de données d'universités** avec classements et spécialités
- **💰 Calculateur de coûts** en devise locale et FCFA
- **📋 Guide des visas** par pays
- **🏠 Informations logement** et vie étudiante
- **🔍 Système de recherche** par filière et pays
- **📱 Interface responsive** compatible mobile/desktop

### 🛠️ Fonctionnalités Techniques
- **🐳 Containerisation Docker** pour un déploiement facile
- **⚡ Performance optimisée** avec Nginx
- **🔒 Sécurité renforcée** avec headers de sécurité
- **📊 Monitoring** avec health checks
- **🔄 CI/CD Ready** avec scripts de déploiement

## 🌍 Pays Disponibles

| Pays | 🏛️ Universités | 💰 Coût Moyen | 🎯 Spécialités |
|------|----------------|---------------|----------------|
| 🇫🇷 **France** | 85+ | 170€/an | Ingénierie, Médecine, Commerce |
| 🇺🇸 **États-Unis** | 150+ | $25,000/an | Business, Technologie, Arts |
| 🇨🇦 **Canada** | 95+ | $15,000/an | Ingénierie, Santé, Administration |
| 🇩🇪 **Allemagne** | 120+ | Gratuit | Ingénierie, Musique, Chimie |
| 🇧🇪 **Belgique** | 45+ | 835€/an | Psychologie, Communication, Droit |
| 🇨🇳 **Chine** | 200+ | ¥20,000/an | Ingénierie, TIC, Commerce |
| 🇰🇷 **Corée du Sud** | 80+ | ₩8,000,000/an | Électronique, Télécoms, Musique |
| 🇪🇸 **Espagne** | 75+ | 680€/an | Architecture, Tourisme, Ingénierie |
| 🇮🇹 **Italie** | 90+ | 850€/an | Architecture, Mode, Beaux-arts |
| 🇯🇵 **Japon** | 85+ | ¥535,800/an | Technologie, Électronique, Design |
| 🇲🇦 **Maroc** | 50+ | 15,000 MAD/an | Médecine, Ingénierie, Architecture |
| 🇷🇴 **Roumanie** | 60+ | 2,500€/an | Médecine, Ingénierie, Musique |
| 🇬🇧 **Royaume-Uni** | 130+ | £9,250/an | Gestion, Communication, Économie |
| 🇷🇺 **Russie** | 100+ | 200,000₽/an | Médecine, Ingénierie, Relations |
| 🇸🇳 **Sénégal** | 25+ | 150,000 FCFA/an | Sciences Politiques, Administration |
| 🇨🇭 **Suisse** | 40+ | 1,500 CHF/an | Hôtellerie, Tourisme, Finance |
| 🇹🇳 **Tunisie** | 35+ | 1,200 TND/an | Architecture, Ingénierie, Tourisme |
| 🇹🇷 **Turquie** | 70+ | 15,000 TL/an | Tourisme, Architecture, Ingénierie |

## 📁 Structure du Projet

```
Orientation/
├── 📄 index.html                 # Page d'accueil principale
├── 🎨 styles.css                 # Styles CSS principaux
├── 🐳 Dockerfile                 # Configuration Docker
├── 🐙 docker-compose.yml         # Orchestration Docker
├── ⚙️ nginx.conf                 # Configuration Nginx
├── 🚀 deploy.bat                 # Script de déploiement Windows
├── 🚀 deploy.sh                  # Script de déploiement Linux/Mac
├── 🧹 cleanup.bat                # Script de nettoyage
├── 📖 DOCKER_README.md           # Guide Docker détaillé
├── 📁 assets/                    # Ressources communes
│   └── styles.css               # Styles CSS communs
├── 🖼️ images/                    # Images et ressources graphiques
│   ├── *.avif                   # Drapeaux des pays
│   └── *.jpg                    # Images de fond
├── 🌍 [Pays]/                    # Dossiers par pays (18 pays)
│   ├── index.html              # Page principale du pays
│   └── styles.css              # Styles spécifiques au pays
└── 📄 README.md                 # Documentation du projet
```

## ⚡ Démarrage Rapide

### 🐳 Avec Docker (Recommandé)

```bash
# 1. Cloner le repository
git clone https://github.com/votre-username/Orientation.git
cd Orientation

# 2. Lancer avec Docker Compose
docker-compose up -d

# 3. Accéder à l'application
# Ouvrir http://localhost dans votre navigateur
```

### 🔧 Installation Manuelle

```bash
# 1. Cloner le repository
git clone https://github.com/votre-username/Orientation.git
cd Orientation

# 2. Installer un serveur web local (Python)
python -m http.server 8000

# 3. Accéder à l'application
# Ouvrir http://localhost:8000 dans votre navigateur
```

## 🐳 Déploiement avec Docker

### 📋 Prérequis
- Docker Desktop installé
- Docker Compose disponible

### 🚀 Déploiement Automatique

#### Windows
```cmd
deploy.bat
```

#### Linux/Mac
```bash
chmod +x deploy.sh
./deploy.sh
```

### 🔧 Configuration Docker

Le projet inclut une configuration Docker complète :

- **🐳 Dockerfile** : Image Nginx optimisée avec sécurité
- **🐙 docker-compose.yml** : Orchestration multi-services
- **⚙️ nginx.conf** : Configuration Nginx performante
- **🔒 Sécurité** : Headers de sécurité, utilisateur non-root
- **📊 Monitoring** : Health checks intégrés

### 🧹 Nettoyage

```bash
# Nettoyer les conteneurs et images
cleanup.bat  # Windows
./cleanup.sh # Linux/Mac
```

## 🔧 Installation Manuelle

### 📋 Prérequis
- Serveur web (Apache, Nginx, ou serveur local)
- Navigateur web moderne

### 📦 Étapes d'Installation

1. **Télécharger le projet**
   ```bash
   git clone https://github.com/votre-username/Orientation.git
   cd Orientation
   ```

2. **Configurer le serveur web**
   - Copier les fichiers dans le répertoire web
   - Configurer les permissions appropriées

3. **Accéder à l'application**
   - Ouvrir `index.html` dans un navigateur
   - Ou configurer un serveur web local

## 📖 Guide d'Utilisation

### 🎯 Pour les Étudiants

1. **🔍 Explorer les pays**
   - Consulter la liste des 18 pays disponibles
   - Filtrer par région ou spécialité

2. **📚 Rechercher des universités**
   - Parcourir les universités par pays
   - Consulter les classements et spécialités

3. **💰 Calculer les coûts**
   - Vérifier les frais de scolarité
   - Estimer le coût de la vie

4. **📋 Préparer le départ**
   - Consulter les guides de visa
   - Préparer les documents nécessaires

### 🏛️ Pour les Institutions

1. **📊 Consulter les statistiques**
   - Nombre d'étudiants par pays
   - Tendances d'inscription

2. **🤝 Participer au projet**
   - Ajouter de nouvelles universités
   - Mettre à jour les informations

## 🎨 Personnalisation

### 🎨 Modifier les Styles

```css
/* Personnaliser les couleurs principales */
:root {
  --primary-color: #your-color;
  --secondary-color: #your-color;
  --accent-color: #your-color;
}
```

### 🌍 Ajouter un Nouveau Pays

1. **Créer le dossier du pays**
   ```
   NouveauPays/
   ├── index.html
   └── styles.css
   ```

2. **Ajouter l'image du drapeau**
   ```
   images/nouveaupays.avif
   ```

3. **Mettre à jour index.html**
   - Ajouter la carte du pays
   - Mettre à jour les liens

## 🤝 Contribution

Nous accueillons toutes les contributions ! Voici comment participer :

### 📋 Comment Contribuer

1. **🔀 Fork le projet**
   ```bash
   git clone https://github.com/votre-username/Orientation.git
   ```

2. **🌿 Créer une branche**
   ```bash
   git checkout -b feature/nouvelle-fonctionnalite
   ```

3. **💾 Commiter les changements**
   ```bash
   git add .
   git commit -m "Ajout: nouvelle fonctionnalité"
   ```

4. **🚀 Pousser vers la branche**
   ```bash
   git push origin feature/nouvelle-fonctionnalite
   ```

5. **📝 Ouvrir une Pull Request**

### 🎯 Types de Contributions

- **🐛 Correction de bugs**
- **✨ Nouvelles fonctionnalités**
- **📚 Amélioration de la documentation**
- **🎨 Amélioration de l'interface**
- **🌍 Ajout de nouveaux pays**
- **📊 Mise à jour des données**

### 📋 Standards de Code

- **HTML** : HTML5 sémantique
- **CSS** : CSS3 avec variables CSS
- **Images** : Format AVIF pour les drapeaux
- **Commits** : Messages en français descriptifs

## 📝 Licence

Ce projet est sous licence **MIT**. Voir le fichier [LICENSE](LICENSE) pour plus de détails.

```
MIT License

Copyright (c) 2025 Guide d'Orientation pour les Études à l'Étranger

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
```

## 📞 Contact

### 👥 Équipe de Développement

- **📧 Email** : contact@orientation-etudes-etranger.com
- **🌐 Site Web** : https://orientation-etudes-etranger.com
- **💬 Discord** : [Rejoindre notre serveur](https://discord.gg/orientation)

### 📊 Statistiques du Projet

- **⭐ Stars** : [![GitHub stars](https://img.shields.io/github/stars/votre-username/Orientation.svg)](https://github.com/votre-username/Orientation/stargazers)
- **🔀 Forks** : [![GitHub forks](https://img.shields.io/github/forks/votre-username/Orientation.svg)](https://github.com/votre-username/Orientation/network)
- **🐛 Issues** : [![GitHub issues](https://img.shields.io/github/issues/votre-username/Orientation.svg)](https://github.com/votre-username/Orientation/issues)

---

<div align="center">

**🌟 Si ce projet vous aide, n'hésitez pas à lui donner une étoile ! 🌟**

*Fait avec ❤️ pour les étudiants du monde entier*

</div>