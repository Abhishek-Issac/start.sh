if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/NEGANTG/cvilla-jan23.git /TigerShroffv3
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /app
fi
cd /app
pip3 install -U -r requirements.txt
echo "Starting Bot...."
gunicorn app:app & python3 bot.py
