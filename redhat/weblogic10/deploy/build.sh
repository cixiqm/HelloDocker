#!/bin/bash

# war and springboot
# cd ../../HelloJava/HelloWar/
# ./package.sh

# cd ../HelloWebWar/
# ./package.sh

# cd ../../HelloDocker/weblogic10
# cp ../../HelloJava/HelloWar/target/war-0.0.1-SNAPSHOT.war ./webapps
# cp ../../HelloJava/HelloWebWar/target/web_war-0.0.1-SNAPSHOT.war ./webapps

# ear
# cp ../../HelloJava/HelloEar/ear.ear ./webapps

# ams
cd ../../../../nx/ams/
./package.sh
cd ../../HelloDocker/redhat/weblogic10/deploy
cp ../../../../nx/ams-web/target/ams.war ./webapps

# rm ./webapps/ams -rf
# mv ../../nx/ams-web/target/ams ./webapps

chmod a+w -R ../
chmod a+w -R ../../../../nx

docker-compose build
