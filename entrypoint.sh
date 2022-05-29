#!/usr/bin/env ash

cat << EOF > /opt/config.txt
token = ${TOKEN} 
owner = ${OWNER} 
prefix = "${PREFIX:-!}"
EOF

java -Dnogui=true -jar /opt/JMusicBot-0.3.8.jar
