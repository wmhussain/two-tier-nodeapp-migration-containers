# Custom Script for Linu#commands for installing mongo db:

#Step 1 - Importing the Public Key
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

#Step 2 - Create source list file MongoDB:
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

#Step 3 - Update the repository 
sudo apt-get update

#Step 4 - Install MongoDB
sudo apt-get install -y mongodb-org


#Start mongodb and add it as service to be started at boot time:
systemctl start mongod
systemctl enable mongod
export MONGODB_URL="mongodb://localhost/tododb"


#Install Nodejs
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

#command for clone app:
mkdir /app
sudo git clone https://github.com/evillgenius75/gbb-todo /app
cd /app
npm install
#to be done my user 'npm start'
exit 0x