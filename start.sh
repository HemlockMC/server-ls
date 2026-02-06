#!/usr/bin/env bash

java \
  -Xms512M \
  -Xmx1024M \
  -XX:+UseG1GC \
  -XX:MaxGCPauseMillis=200 \
  -XX:+DisableExplicitGC \
  -jar paper.jar nogui
