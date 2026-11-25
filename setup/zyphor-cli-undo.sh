#!/usr/bin/env bash
# zyphor-cli-undo.sh
# Reverts zyphor-cli-setup.sh: removes zyphor-cli, the Zyphor repository
# config and the Zyphor archive keyring.
# Intended for NON-Zyphor machines only. On Zyphor OS (or anything related
# to it) this script refuses to do anything.
# Usage: sudo ./zyphor-cli-undo.sh

set -euo pipefail

export DEBIAN_FRONTEND=noninteractive

# Order matters: the CLI first, then the repo config, then the keyring
PACKAGES=(zyphor-cli zyphor-repo-config zyphor-archive-keyring)

info() { printf '\033[1;34m==>\033[0m %s\n' "$*"; }
warn() { printf '\033[1;33mWarning:\033[0m %s\n' "$*" >&2; }
err()  { printf '\033[1;31mError:\033[0m %s\n' "$*" >&2; }

# Must run as root
if [[ $EUID -ne 0 ]]; then
    err "Please run as root: sudo $0"
    exit 1
fi

# --- Detect Zyphor OS ------------------------------------------------------
OS_RELEASE=""
for f in /etc/os-release /usr/lib/os-release; do
    if [[ -r "$f" ]]; then
        OS_RELEASE="$f"
        break
    fi
done

if [[ -n "$OS_RELEASE" ]]; then
    # Read the values in a subshell so nothing leaks into this script
    OS_INFO="$(
        . "$OS_RELEASE"
        printf '%s %s %s %s %s' \
            "${NAME:-}" "${PRETTY_NAME:-}" "${ID:-}" "${ID_LIKE:-}" "${VARIANT:-}"
    )"
    if [[ "${OS_INFO,,}" == *zyphor* ]]; then
        info "Detected Zyphor OS (or a Zyphor-based system) in $OS_RELEASE."
        info "zyphor-cli is part of this system, so nothing will be removed."
        exit 0
    fi
else
    warn "No os-release file found; cannot verify the OS."
    err "Refusing to continue, since this could be a Zyphor OS machine."
    exit 1
fi

info "Non-Zyphor system detected. Removing zyphor-cli and the Zyphor repository..."

is_installed() {
    dpkg-query -W -f='${Status}' "$1" 2>/dev/null | grep -q "install ok installed"
}

# --- Remove packages -------------------------------------------------------
for pkg in "${PACKAGES[@]}"; do
    if is_installed "$pkg"; then
        info "Removing $pkg..."
        apt-get purge -y "$pkg"
    else
        info "$pkg is not installed, skipping."
    fi
done

# --- Clean up any leftover repo/keyring files ------------------------------
info "Cleaning up leftover Zyphor repository files..."
shopt -s nullglob
leftovers=(
    /etc/apt/sources.list.d/zyphor*
    /etc/apt/trusted.gpg.d/zyphor*
    /usr/share/keyrings/zyphor*
    /etc/apt/keyrings/zyphor*
)
shopt -u nullglob

for f in "${leftovers[@]}"; do
    info "Deleting $f"
    rm -f -- "$f"
done

# --- Refresh package lists -------------------------------------------------
info "Refreshing package lists..."
apt-get update -y

info "Done. zyphor-cli and the Zyphor repository have been removed."
info "Note: wget and ca-certificates (installed by the setup script) were left in place."