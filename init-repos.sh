#!/bin/sh

# Vérifie si le dépôt git n'existe pas
if [ ! -d "/data/.git" ]; then
  # Supprime tout dans /data
  rm -rf /data/* /data/.* 2>/dev/null
  # Clone le dépôt git
  git clone --progress --verbose https://github.com/TBMPQF/TBM_CPU_V2.git /data
else
  echo "Le dépôt existe déjà dans /data"
fi
