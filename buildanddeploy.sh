#!/bin/bash
cd ~/
git clone https://ansible-story@dev.azure.com/ansible-story/springbootapp_pune/_git/springbootapp_pune
$path = ~/springbootapp_pune
if [ $path -eq true ]
then
cd springbootapp_pune/FlightStatusResource
else
	echo "failed to clone"
fi
mvn clean package
cp springbootapp_pune/FlightsStatusResource/target/FlightsStatusResource-0.1.0.jar /usr/share/tomcat/webapps/
