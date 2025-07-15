# Base image
FROM ubuntu:22.04

# Avoid prompts during apt install
ENV DEBIAN_FRONTEND=noninteractive

# Install common tools and languages
RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    wget \
    gnupg \
    ca-certificates \
    software-properties-common \
    openjdk-17-jdk \
    nodejs \
    npm \
    golang-go \
    docker.io \
    && apt-get clean

# Set environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=$PATH:/usr/local/go/bin

# Create a non-root user (optional but recommended)
RUN useradd -ms /bin/bash devuser
USER devuser
WORKDIR /home/devuser

# Done
