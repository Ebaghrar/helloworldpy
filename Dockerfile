# Utilisez l'image de base Python
FROM python:3.8

# Définissez le répertoire de travail
WORKDIR /app

# Copiez les fichiers nécessaires dans le conteneur
COPY app.py .
COPY requirements.txt .

# Installez les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposez le port sur lequel l'application écoute
EXPOSE 8080

# Commande pour exécuter l'application
CMD ["python", "app.py"]
