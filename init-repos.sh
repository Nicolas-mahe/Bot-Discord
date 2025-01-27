if [ ! -d "/data/.git" ]; then
  rm -rf /data/*
  git clone --progress --verbose https://github.com/TBMPQF/TBM_CPU_V2.git /data
else
  echo "Le dépôt existe déjà dans /data"
fi

mkdir -p /data/logs && touch /data/logs/current_output.log /data/logs/current_error.log &&
mv /data/logs/current_output.log /data/logs/output.log &&
mv /data/logs/current_error.log /data/logs/error.log