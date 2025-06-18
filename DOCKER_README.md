# 🐳 Guide Docker - Projet Orientation

Ce guide vous explique comment utiliser Docker pour déployer l'application Orientation.

## 📋 Prérequis

- Docker Desktop installé et en cours d'exécution
- Compte Docker Hub (optionnel, pour le push)

## 🚀 Démarrage rapide

### 1. Build et lancement local

```bash
# Construire l'image
docker build -t orientation-app .

# Lancer avec docker-compose
docker-compose up -d

# Ou lancer directement
docker run -d -p 80:80 --name orientation-web orientation-app
```

### 2. Utilisation des scripts de déploiement

#### Windows
```cmd
deploy.bat
```

#### Linux/Mac
```bash
chmod +x deploy.sh
./deploy.sh
```

## 🔧 Configuration

### Variables d'environnement

Modifiez le fichier `deploy.sh` ou `deploy.bat` pour configurer :

- `DOCKER_USERNAME` : Votre nom d'utilisateur Docker Hub
- `VERSION` : Version de l'image
- `DOCKER_IMAGE_NAME` : Nom de l'image

### Ports

- **80** : Application principale
- **443** : HTTPS (si configuré)
- **3000** : Mode développement

## 📦 Commandes utiles

```bash
# Voir les conteneurs en cours
docker ps

# Voir les logs
docker logs orientation-web

# Arrêter les conteneurs
docker-compose down

# Reconstruire l'image
docker-compose up --build

# Nettoyer les images
docker image prune -f

# Accéder au conteneur
docker exec -it orientation-web sh
```

## 🌐 Accès à l'application

- **Local** : http://localhost
- **Health check** : http://localhost/health

## 🔍 Dépannage

### Problèmes courants

1. **Port déjà utilisé**
   ```bash
   # Changer le port dans docker-compose.yml
   ports:
     - "8080:80"  # Au lieu de "80:80"
   ```

2. **Permissions de fichiers**
   ```bash
   # Vérifier les permissions
   ls -la "Landing page/"
   ```

3. **Image ne se construit pas**
   ```bash
   # Voir les logs de build
   docker build -t orientation-app . --progress=plain
   ```

### Logs et monitoring

```bash
# Logs en temps réel
docker logs -f orientation-web

# Statistiques du conteneur
docker stats orientation-web

# Vérifier la santé
curl http://localhost/health
```

## 📚 Ressources

- [Documentation Docker](https://docs.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- [Nginx Documentation](https://nginx.org/en/docs/)

## 🤝 Contribution

Pour contribuer au projet :

1. Fork le repository
2. Créez une branche feature
3. Testez avec Docker
4. Soumettez une pull request

## 📄 Licence

Ce projet est sous licence MIT. 