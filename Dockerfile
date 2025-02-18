# Utilisation d'une image officielle de Go
FROM golang:1.23

# Créer un répertoire de travail dans le conteneur
WORKDIR /docker-project

# Copier le code source dans le conteneur
COPY . .
RUN curl -s https://proxy.golang.org/

# Télécharger les dépendances (si tu utilises des modules Go)
RUN go mod tidy

# Compiler l'application Go


RUN go build -o docker-project .

# Exposer le port 8080 pour l'application
EXPOSE 8080

# Lancer l'application Go
CMD ["./docker-project"]
