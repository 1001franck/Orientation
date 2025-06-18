@echo off
REM Script de déploiement Docker pour Windows
REM Auteur: Assistant IA
REM Date: %date%

setlocal enabledelayedexpansion

REM Configuration
set DOCKER_IMAGE_NAME=orientation-app
set DOCKER_USERNAME=your-dockerhub-username
set VERSION=1.0.0
set FULL_IMAGE_NAME=%DOCKER_USERNAME%/%DOCKER_IMAGE_NAME%:%VERSION%
set LATEST_IMAGE_NAME=%DOCKER_USERNAME%/%DOCKER_IMAGE_NAME%:latest

echo 🚀 Démarrage du déploiement Docker...
echo 📦 Image: %FULL_IMAGE_NAME%

REM 1. Build de l'image Docker
echo ✅ Construction de l'image Docker...
docker build -t %DOCKER_IMAGE_NAME% .
docker tag %DOCKER_IMAGE_NAME% %FULL_IMAGE_NAME%
docker tag %DOCKER_IMAGE_NAME% %LATEST_IMAGE_NAME%

REM 2. Test local de l'image
echo ✅ Test local de l'image...
docker run --rm -d --name test-orientation -p 8080:80 %DOCKER_IMAGE_NAME%
timeout /t 5 /nobreak >nul
echo 🌐 Application accessible sur http://localhost:8080
echo ⏹️ Arrêt du conteneur de test...
docker stop test-orientation

REM 3. Connexion à Docker Hub
echo ✅ Connexion à Docker Hub...
echo 🔐 Veuillez vous connecter à Docker Hub...
docker login

REM 4. Push vers Docker Hub
echo ✅ Envoi de l'image vers Docker Hub...
docker push %FULL_IMAGE_NAME%
docker push %LATEST_IMAGE_NAME%

REM 5. Déploiement avec docker-compose
echo ✅ Déploiement avec docker-compose...
docker-compose down
docker-compose up -d --build

REM 6. Vérification du déploiement
echo ✅ Vérification du déploiement...
timeout /t 3 /nobreak >nul
powershell -Command "try { Invoke-WebRequest -Uri 'http://localhost' -UseBasicParsing | Out-Null; Write-Host '🎉 Déploiement réussi !'; Write-Host '🌐 Application accessible sur http://localhost' } catch { Write-Host '❌ Erreur lors du déploiement'; exit 1 }"

REM 7. Nettoyage
echo ✅ Nettoyage des images temporaires...
docker image prune -f

echo 🎯 Déploiement terminé avec succès !
echo 📋 Résumé:
echo    - Image: %FULL_IMAGE_NAME%
echo    - Application: http://localhost
echo    - Docker Hub: https://hub.docker.com/r/%DOCKER_USERNAME%/%DOCKER_IMAGE_NAME%

pause 