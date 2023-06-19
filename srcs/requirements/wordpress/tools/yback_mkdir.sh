# #!/bin/bash
# if [ ! -d "/home/${USER}/data" ]; then
#         mkdir /home/${USER}/data
#         mkdir /home/${USER}/data/mariadb
#         mkdir /home/${USER}/data/wordpress
# fi

sudo mkdir -p /home/$USER/data/mariadb
sudo mkdir -p /home/$USER/data/wordpress
sudo chown -R $USER:$USER /home/$USER/data
