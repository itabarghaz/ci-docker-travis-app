
# Create project Maven
``
mvn archetype:generate -DgroupId=com.tab -DartifactId=ci-docker-travis-app -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
``
# Récupérer l'image de l'application
``
docker pull toxreader/config-server
``
# Executer l'image 
``
docker run toxreader/config-server
``

# How to install Travis CI locally on Ubuntu
``
sudo apt install ruby ruby-dev
sudo gem install travis
``
# travis encrypt variables

1 - Add your project to travis ci
``
travis login --pro
travis encrypt DOCKERHUB_USER="user" --add env --pro
travis encrypt DOCKERHUB_PASSWORD="pwd" --add env --pro
``