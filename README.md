# Starter setup for Hugo
cv développé avec HUGO


## Docker containers:

Cette application possède 1 conteneur Docker : HUGO


cloner le projet
-----
cloner le cv 
```bash
git clone git@github.com:jbelisawssen/devops.git
```

Usage
-----
Pour construire l'image Docker, exécutez la commande suivante à la racine de votre projet :
```bash
docker build -t cv-jbali-saoussen:latest .
```

Exécutez le conteneur avec la commande :
```bash
docker run -p 8080:80 cv-jbali-saoussen:latest

Acceder au site 
http://localhost:8080/


lien vers mon cv sur github :
```bash
https://github.com/jbelisawssen/devops
