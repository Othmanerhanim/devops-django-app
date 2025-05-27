# Utiliser une image officielle Python comme base
FROM python:3.11-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers requirements.txt dans le conteneur
COPY requirements.txt .

# Installer les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Copier tout le projet dans le conteneur
COPY . .

# Exposer le port 8000 pour l'application
EXPOSE 8000

# Commande pour lancer Gunicorn avec l’application Django
CMD ["gunicorn", "myapp.wsgi:application", "--bind", "0.0.0.0:8000"]
