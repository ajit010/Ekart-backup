# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql
clear
docker --version
psql --version
git clone https://github.com/ajit010/Ekart-final.git
ls
cd Ekart-final
ls
rm Jenkinsfile
ls
cd ..
ls
mv Ekart-final ekart
ls
cd ekart
cd ..
pwd
cd ekart
ls
mv . /root/app
mv . /root/ekart/app
ls
mkdir app
ls
cd ..
ls
cd ekart
mv app.py requirements.txt /root/ekart/appp
mv app.py requirements.txt /root/ekart/app
ls
mv static templates /root/ekart/app
ls
rm README.md
ls
clear
cd app
ls
vi Dockerfile
vi app.py
clear
ls 
cd ..
ls
mkdir database
ls
cd database
vi Dockerfile
docker network create ekart
ls
docker build -t postgres .
docker run -dt --name db -e POSTGRES_PASSWORD=root123 -e POSTGRES_USER=postgres -e POSTGRES_DB=flask -p 5431:5432 --network ekart postgres
cd ..
docker ps -a
docker images
cd app
docker build -t python .
docker run -dt --name cont1 python
docker ps -a
docker start cont1
docker ps -a
cat app.py
clear
cd ..
ls
cd database
cat Dockerfile
docker ps -a
docker images
docker rm cont1
clear
docker run -dt --name dubg python
docker ps -a
docker inspect 4ccf588308ea
clear
docker rm dubg
docker run -dt --name cont1 -p 5000:5000 --network ekart python
docker ps -a
