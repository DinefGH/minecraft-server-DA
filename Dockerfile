FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Copy server JAR
COPY server/server.jar /app/server.jar

# Environment defaults (can be overridden by docker-compose)
ENV EULA=true
ENV MEMORY=2G
ENV ENABLE_COMMAND_BLOCK=false
ENV DIFFICULTY=easy
ENV MAX_PLAYERS=20

# Expose Minecraft default port
EXPOSE 25565

# Start Minecraft with passed environment vars
CMD java \
  -Xmx${MEMORY} -Xms${MEMORY} \
  -jar server.jar nogui \
  --eula=${EULA} \
  --enable-command-block=${ENABLE_COMMAND_BLOCK} \
  --difficulty=${DIFFICULTY} \
  --max-players=${MAX_PLAYERS}