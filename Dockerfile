FROM eclipse-temurin:21-jdk-alpine

WORKDIR /app

# Copy server JAR
COPY server/minecraft_server.1.21.8.jar /app/minecraft_server.1.21.8.jar

# Accept EULA and setup defaults
ENV EULA=true
ENV MEMORY=2G

# Generate eula.txt at build time (Minecraft needs this to start)
RUN echo "eula=${EULA}" > /app/eula.txt

# Expose Minecraft port
EXPOSE 25565

# Start server
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "minecraft_server.1.21.8.jar", "nogui"]