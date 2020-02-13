sudo apt-get update
sudo apt install git ca-certificates

# PostgreSQL
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib

# SSH Key
ssh-keygen -b 2048 -t rsa -q -N "" -f ~/.ssh/id_rsa

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn

# VS Code
sudo snap install code --classic

# Manual todos:
# - add ssh key to Github, Bitbucket, DigitalOcean, Scaleway
# - install node using 'nvm install 12.14.1'

