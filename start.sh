#!/bin/bash
set -e

# Download Paper if missing
if [ ! -f paper.jar ]; then
  curl -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.20.1/builds/196/downloads/paper-1.20.1-196.jar
fi

# Accept EULA
echo "eula=true" > eula.txt

# Server config
cat > server.properties <<EOF
online-mode=true
spawn-protection=0
max-players=25
view-distance=6
simulation-distance=4
motd=LS Server
EOF

# Start server
java -Xms1G -Xmx2G -jar paper.jar nogui
