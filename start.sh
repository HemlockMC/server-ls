#!/bin/bash
set -e

if [ ! -f paper.jar ]; then
  curl -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.20.1/builds/196/downloads/paper-1.20.1-196.jar
fi

echo "eula=true" > eula.txt

cat > server.properties <<EOF
online-mode=false
spawn-protection=32
max-players=15
view-distance=5
simulation-distance=3
motd=LS Server
EOF

java -Xms256M -Xmx450M -jar paper.jar nogui
