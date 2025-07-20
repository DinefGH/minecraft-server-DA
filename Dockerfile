FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Copy server JAR
COPY server/server.jar /app/server.jar

# Accept EULA and setup defaults
ENV EULA=true
ENV MEMORY=2G

# Expose Minecraft port
EXPOSE 25565

# Start server
CMD java -Xmx${MEMORY} -Xms${MEMORY} -jar server.jar nogui
