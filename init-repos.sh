if [ ! -d "/data/.git" ]; then
  git clone --progress --verbose https://github.com/TBMPQF/TBM_CPU_V2.git /data
else
  echo "Le dépôt existe déjà dans /data"
fi