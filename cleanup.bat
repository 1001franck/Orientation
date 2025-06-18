@echo off
REM Script de nettoyage Docker pour Windows
REM Auteur: Assistant IA

echo 🧹 Début du nettoyage Docker...

REM Arrêter et supprimer les conteneurs
echo ✅ Arrêt des conteneurs...
docker-compose down 2>nul
docker stop orientation-web 2>nul
docker rm orientation-web 2>nul

REM Supprimer les images
echo ✅ Suppression des images...
docker rmi orientation-app 2>nul
docker rmi your-dockerhub-username/orientation-app:1.0.0 2>nul
docker rmi your-dockerhub-username/orientation-app:latest 2>nul

REM Nettoyer les volumes non utilisés
echo ✅ Nettoyage des volumes...
docker volume prune -f

REM Nettoyer les réseaux non utilisés
echo ✅ Nettoyage des réseaux...
docker network prune -f

REM Nettoyer les images non utilisées
echo ✅ Nettoyage des images...
docker image prune -af

REM Nettoyer le système
echo ✅ Nettoyage du système...
docker system prune -af

echo 🎉 Nettoyage terminé !
echo 📋 Résumé:
echo    - Conteneurs arrêtés et supprimés
echo    - Images supprimées
echo    - Volumes nettoyés
echo    - Réseaux nettoyés
echo    - Système optimisé

pause 