if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/AK4111/aakadh-love-final3.git /aakadh-love-final3
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /aakadh-love-final3
fi
cd /aakadh-love-final3
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
