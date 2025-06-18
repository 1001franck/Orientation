#!/bin/bash

# Script de déploiement Docker pour le projet Orientation
# Auteur: Assistant IA
# Date: $(date)

set -e  # Arrêter le script en cas d'erreur

# Configuration
DOCKER_IMAGE_NAME="orientation-app"
DOCKER_USERNAME="your-dockerhub-username"  # À modifier avec votre nom d'utilisateur Docker Hub
VERSION="1.0.0"
FULL_IMAGE_NAME="$DOCKER_USERNAME/$DOCKER_IMAGE_NAME:$VERSION"
LATEST_IMAGE_NAME="$DOCKER_USERNAME/$DOCKER_IMAGE_NAME:latest"

echo "🚀 Démarrage du déploiement Docker..."
echo "📦 Image: $FULL_IMAGE_NAME"

# Fonction pour afficher les étapes
print_step() {
    echo "✅ $1"
}

# 1. Build de l'image Docker
print_step "Construction de l'image Docker..."
docker build -t $DOCKER_IMAGE_NAME .
docker tag $DOCKER_IMAGE_NAME $FULL_IMAGE_NAME
docker tag $DOCKER_IMAGE_NAME $LATEST_IMAGE_NAME

# 2. Test local de l'image
print_step "Test local de l'image..."
docker run --rm -d --name test-orientation -p 8080:80 $DOCKER_IMAGE_NAME
sleep 5
echo "🌐 Application accessible sur http://localhost:8080"
echo "⏹️  Arrêt du conteneur de test..."
docker stop test-orientation

# 3. Connexion à Docker Hub
print_step "Connexion à Docker Hub..."
echo "🔐 Veuillez vous connecter à Docker Hub..."
docker login

# 4. Push vers Docker Hub
print_step "Envoi de l'image vers Docker Hub..."
docker push $FULL_IMAGE_NAME
docker push $LATEST_IMAGE_NAME

# 5. Déploiement avec docker-compose
print_step "Déploiement avec docker-compose..."
docker-compose down
docker-compose up -d --build

# 6. Vérification du déploiement
print_step "Vérification du déploiement..."
sleep 3
if curl -f http://localhost:80 > /dev/null 2>&1; then
    echo "🎉 Déploiement réussi !"
    echo "🌐 Application accessible sur http://localhost"
else
    echo "❌ Erreur lors du déploiement"
    exit 1
fi

# 7. Nettoyage
print_step "Nettoyage des images temporaires..."
docker image prune -f

echo "🎯 Déploiement terminé avec succès !"
echo "📋 Résumé:"
echo "   - Image: $FULL_IMAGE_NAME"
echo "   - Application: http://localhost"
echo "   - Docker Hub: https://hub.docker.com/r/$DOCKER_USERNAME/$DOCKER_IMAGE_NAME" 