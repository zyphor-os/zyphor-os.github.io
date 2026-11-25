#!/usr/bin/env bash
# zyphor-cli-setup.sh
# Adds the Zyphor repository (keyring + repo config) and installs zyphor-cli.
# Usage: sudo ./zyphor-cli-setup.sh

set -euo pipefail

BASE_URL="https://github.com/zyphor-os/zyphor-os.github.io/raw/refs/heads/main/bethany-lts/bethany/pool/main/z"
DEBS=(zyphor-archive-keyring.deb zyphor-repo-config.deb)

export DEBIAN_FRONTEND=noninteractive

info() { printf '\033[1;34m==>\033[0m %s\n' "$*"; }
err()  { printf '\033[1;31mError:\033[0m %s\n' "$*" >&2; }

# Must run as root
if [[ $EUID -ne 0 ]]; then
    err "Please run as root: sudo $0"
    exit 1
fi

# Work in a temp folder and always clean up
WORKDIR="$(mktemp -d)"
trap 'rm -rf "$WORKDIR"' EXIT
cd "$WORKDIR"

info "Updating package lists and installing wget..."
apt-get update -y
apt-get install -y wget ca-certificates

info "Downloading Zyphor packages..."
for deb in "${DEBS[@]}"; do
    if ! wget -q --show-progress -O "$deb" "$BASE_URL/$deb"; then
        err "Could not download $deb. Check your internet connection and try again."
        exit 1
    fi
    if [[ ! -s "$deb" ]]; then
        err "$deb downloaded as an empty file."
        exit 1
    fi
done

# The keyring must be installed before the repo config
info "Installing zyphor-archive-keyring..."
apt-get install -y "./zyphor-archive-keyring.deb"

info "Installing zyphor-repo-config..."
apt-get install -y "./zyphor-repo-config.deb"

info "Refreshing package lists with the new Zyphor repository..."
apt-get update -y

info "Installing zyphor-cli..."
apt-get install -y zyphor-cli

info "Done. zyphor-cli is installed."