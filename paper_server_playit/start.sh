#!/bin/bash

# Download Paper JAR if not already present
if [ ! -f paper-1.21.4.jar ]; then
  echo "Downloading Paper 1.21.4..."
  wget https://api.papermc.io/v2/projects/paper/versions/1.21.4/builds/431/downloads/paper-1.21.4.jar -O paper-1.21.4.jar
fi

# Accept EULA
echo "eula=true" > eula.txt

# Start server
java -Xmx1G -Xms1G -jar paper-1.21.4.jar --nogui
