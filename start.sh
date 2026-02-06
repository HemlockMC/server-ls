#!/bin/bash
set -e

# Create server directory
mkdir -p server
cd server

# Download Paper ONLY if it doesn't exist
if [ ! -f paper.jar ]; then
  echo "Downloading Paper..."
  curl -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.20.1/builds/196/downloads/paper-1.20.1-196.jar
fi

# First run generates files
java -Xms1G -Xmx2G -jar paper.jar nogui || true

# Accept EULA
cp ../eula.txt eula.txt

# Server settings
cat > server.properties <<EOF
online-mode=false
spawn-protection=32
max-players=25
view-distance=6
simulation-distance=4
motd=LS Server
EOF

# Start server
java -Xms1G -Xmx2G -jar paper.jar nogui
