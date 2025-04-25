#!/bin/bash
# Download Playit
wget https://github.com/playit-cloud/playit-agent/releases/latest/download/playit-linux-amd64 -O playit
chmod +x playit

# Start Minecraft server in the background
java -Xmx1024M -Xms1024M -jar paper-1.21.4.jar nogui &

# Start Playit tunnel
./playit --token $PLAYIT_TOKEN
