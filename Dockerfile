FROM eclipse-temurin:21-jdk-alpine

WORKDIR /app

RUN curl -o /app/server/minecraft_server.1.21.8.jar https://piston-data.mojang.com/v1/objects/6bce4ef400e4efaa63a13d5e6f6b500be969ef81/server.jar

# Accept EULA and setup defaults
ENV EULA=true
ENV MEMORY=2G

# Generate eula.txt at build time (Minecraft needs this to start)
RUN echo "eula=${EULA}" > /app/eula.txt

# Expose Minecraft port
EXPOSE 25565

# Start server
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "minecraft_server.1.21.8.jar", "nogui"]