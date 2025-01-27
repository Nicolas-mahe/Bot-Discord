#!/bin/sh

# Vérifie si le dépôt git n'existe pas
if [ ! -d "/data/.git" ]; then
  # Supprime tout dans /data sauf le dossier git
  rm -rf /data/* /data/.* 2>/dev/null
  # Clone le dépôt git
  git clone --progress --verbose https://github.com/TBMPQF/TBM_CPU_V2.git /data
else
  echo "Le dépôt existe déjà dans /data"
fi

# Crée le dossier /data/logs s'il n'existe pas et crée les fichiers logs nécessaires
mkdir -p /data/logs
touch /data/logs/current_output.log /data/logs/current_error.log

# Renomme les fichiers logs
mv /data/logs/current_output.log /data/logs/output.log
mv /data/logs/current_error.log /data/logs/error.log