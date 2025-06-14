FROM nginx:alpine

# Supprimer le directory par défaut de Nginx
RUN rm -rf /usr/share/nginx/html/*  

# Copier le site dans le directory de Nginx
COPY . /usr/share/nginx/html

# Exposer le port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
