# Minecraft Server with Docker Compose

* [Introduction](#introduction)
* [Prerequisites](#prerequisites)
* [Quickstart](#quickstart)
* [Usage](#usage)
* [Environment Configuration](#environment-configuration)
* [Useful Links](#useful-links)


## Introduction

Welcome to the Minecraft Docker Server setup! This project provides an easy way to run a Minecraft Java Edition server using Docker Compose with the itzg/minecraft-server image. It includes persistent data storage, configurable server options via a .env file, and simple start/stop commands.

## Prerequisites

Before you begin, ensure the following tools are installed on your system:

Git (to clone the repository)

Docker & Docker Compose (to run the server container)

## Quickstart

1. Clone GitHub Repository

    ```bash
    git clone https://github.com/DinefGH/minecraft-docker-server.git
    cd minecraft-docker-server
    ```

2. Copy and Configure the Environment File

    ```bash
    cp .env.example .env
    ```

    Edit .env to change your server settings like RAM, difficulty, max players, etc.

3. Start the Server

    ```bash
    docker compose up -d
    ```

4. Connect to the Server

    In your Minecraft client, connect using:

    ```bash
    YOUR_SERVER_IP:MC_PORT
    ```

    Make sure to replace YOUR_SERVER_IP and use the correct port defined in .env (e.g., 1234).

## Usage

1. View Logs

    ```bash
    docker logs -f mc
    ```

2. Restart the Server

    ```bash
    docker compose restart
    ```

3. Stop the Server

    ```bash
    docker compose down
    ```

4. Update the Server

    ```bash
    docker compose pull
    ```

## Environment Configuration

All configuration is managed through the .env file. Below is an example:

```bash
# Required to start the server
EULA=TRUE

# Server memory settings
MEMORY=2G

# Minecraft game settings
ENABLE_COMMAND_BLOCK=true
DIFFICULTY=normal
MAX_PLAYERS=10
MOTD=Welcome to my Minecraft Docker server!

# Port to expose Minecraft on your host
MC_PORT=8888
```

To apply changes:

```bash
docker compose down && docker compose up -d
```

## Useful Links

* [itzg/minecraft-server on Docker Hub](https://hub.docker.com/r/itzg/minecraft-server)
* [Docker Compose Documentation](https://docs.docker.com/compose/)
* [Minecraft Java Edition Server Setup Guide](https://minecraft.wiki/w/Tutorials/Setting_up_a_server)

---

Happy crafting! ⛏️
