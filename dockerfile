# Phase de build
FROM klakegg/hugo:latest as builder

# Copier le contenu du site Hugo dans le conteneur
COPY . /src

# Se déplacer dans le répertoire du site Hugo
WORKDIR /src

# Exécuter la commande Hugo pour générer le site statique

# Phase de run
FROM nginx:latest as production

# Copier le site statique généré dans le conteneur NGINX
COPY --from=builder /src/public /usr/share/nginx/html

# Exposer le port 80
EXPOSE 80

# Commande pour démarrer NGINX
CMD ["nginx", "-g", "daemon off;"]
