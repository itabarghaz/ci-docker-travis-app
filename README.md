
# Create project Mavens

mvn archetype:generate -DgroupId=com.tab -DartifactId=ci-docker-travis-app -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false

# How to install Travis CI locally on Ubuntu

sudo apt install ruby ruby-dev
sudo gem install travis

# travis encrypt variables
1- Add your project to travis ci

travis login --pro
travis encrypt DOCKERHUB_USER="toxreader" --add env --pro
travis encrypt DOCKERHUB_PASSWORD="toxreaderabarghaz0658495054" --add env --pro