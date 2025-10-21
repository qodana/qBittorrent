#!/bin/bash
set -e

echo "======================================"
echo "qBittorrent Build Installation Script"
echo "======================================"

# Update package lists
echo "Updating package lists..."
apt-get update

# Install build tools
echo "Installing build tools..."
apt-get install -y \
    cmake \
    build-essential \
    git \
    pkg-config \
    ninja-build

# Install required dependencies
echo "Installing basic dependencies..."
apt-get install -y \
    libssl-dev \
    zlib1g-dev \
    wget \
    libbz2-dev \
    liblzma-dev \
    libxcb1-dev \
    libx11-dev \
    libxkbcommon-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libfontconfig1-dev \
    libfreetype6-dev \
    libdbus-1-dev \
    libxcb-*-dev

# Install Qt 6 from Debian repos (use what's available and disable GUI)
# qBittorrent nox (headless) doesn't need the full Qt 6.6 - we'll disable GUI completely
apt-get install -y \
    qt6-base-dev \
    qt6-tools-dev
