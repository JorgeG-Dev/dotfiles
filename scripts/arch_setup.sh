#!/usr/bin/env bash
set -e

NECESSARY_PACKAGES=(
    git
    curl
)

UTILITIES=(
    ripgrep
    fd
)

DEV_ENVIRONMENT=(
    neovim
    starship
    tmux
    lazygit
    docker
    docker-compose
    ghostty
    obsidian
)

LANG_TOOLCHAINS=(
    base-devel
    make
    rustup
    python
    cmake
    lua
    nodejs
)

LANG_DEV_TOOLS=(
    lua-language-server
    stylua
    uv
    npm
    ruff
    tree-sitter-cli
)

install_packages() {
    local packages=("$@")
    for pkg in "${packages[@]}"; do
        if ! pacman -Qi "${pkg}" &> /dev/null; then
            echo "Installing ${pkg}"
            sudo pacman -S --needed --noconfirm "${pkg}"
        else
            echo "${pkg} is already installed"
        fi
    done
}

echo ""
echo "Updating system" 
sudo pacman -Syu

echo ""
echo "Installing necessary packages..."
install_packages "${NECESSARY_PACKAGES[@]}"

echo ""
echo "Installing utilities..."
install_packages "${UTILITIES[@]}"

echo ""
echo "Installing dev environment..."
install_packages "${DEV_ENVIRONMENT[@]}"

echo ""
echo "Installing language toolchains..."
install_packages "${LANG_TOOLCHAINS[@]}"

echo ""
echo "Installing language dev tools..."
install_packages "${LANG_DEV_TOOLS[@]}"

echo ""
echo "Installing rust based tools"
if command -v rustup &>/dev/null; then
    rustup component add rust-analyzer
fi
