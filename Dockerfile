# ERC-8004 Example Dockerfile - Ubuntu 24.04
FROM ubuntu:24.04

# Prevent interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    curl \
    git \
    build-essential \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js 20.x (LTS)
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

# Install Foundry
RUN curl -L https://foundry.paradigm.xyz | bash
ENV PATH="/root/.foundry/bin:${PATH}"
RUN /bin/bash -c "source ~/.bashrc && foundryup"

# Copy application files
COPY requirements.txt .
COPY package.json .
COPY . .

# Install Python dependencies
RUN pip3 install --no-cache-dir -r requirements.txt --break-system-packages

# Build smart contracts
WORKDIR /app/contracts
# Initialize git repo and install forge-std
RUN git config --global user.email "docker@example.com" && \
    git config --global user.name "Docker Build" && \
    git init && \
    git add -A && \
    git commit -m "Initial commit" && \
    forge install foundry-rs/forge-std
RUN forge build

# Install frontend dependencies (if needed)
WORKDIR /app
RUN npm install

# Copy environment file
RUN if [ ! -f .env ]; then cp .env.example .env; fi

# Expose ports
# 8545 for Anvil blockchain
# 5173 for Vite dev server
EXPOSE 8545 5173

# Default command
CMD ["python3", "demo.py"]
