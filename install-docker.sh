curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo curl -fsSL "https://github.com/docker/compose/releases/download/v2.40.3/docker-compose-linux-x86_64" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo usermod -aG docker vagrant