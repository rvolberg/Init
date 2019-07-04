 #!/bin/bash

# creer tache crontab
# 0 4 * * 1 /home/scpt_update.sh
# crontab -l pour lister les taches
# crontabl -e pour editer la liste

echo "apt-get update >> /var/log/update_script.log" >> /home/scpt_update.sh
echo "apt-get upgrade >> /var/log/update_script.log" >> /home/scpt_update.sh

