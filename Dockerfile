# Utiliser l'image officielle de Nginx Alpine (plus légère)
FROM nginx:alpine

# Installer curl pour les health checks
RUN apk add --no-cache curl

# Créer un utilisateur non-root pour la sécurité
RUN addgroup -g 1001 -S nginx && \
    adduser -S -D -H -u 1001 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx

# Copier les fichiers de l'application
COPY index.html styles.css /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf

# Copier les assets si nécessaire
COPY assets/ /usr/share/nginx/html/assets/ 2>/dev/null || true

# Définir les permissions appropriées
RUN chown -R nginx:nginx /usr/share/nginx/html && \
    chmod -R 755 /usr/share/nginx/html && \
    chown -R nginx:nginx /var/cache/nginx && \
    chown -R nginx:nginx /var/log/nginx && \
    chown -R nginx:nginx /etc/nginx/conf.d && \
    touch /var/run/nginx.pid && \
    chown -R nginx:nginx /var/run/nginx.pid

# Exposer le port 80
EXPOSE 80

# Basculer vers l'utilisateur nginx
USER nginx

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD curl -f http://localhost/ || exit 1

# Commande par défaut pour démarrer Nginx
CMD ["nginx", "-g", "daemon off;"] 