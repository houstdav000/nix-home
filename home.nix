# home.nix
#
# Personal Home-manager configuration
#
# https://nixos.wiki/wiki/Home_Manager

{ config, pkgs, ... }: {

  nixpkgs.config.allowUnfree = true;

  imports = [
    ./editors/neovim.nix
    ./editors/vscodium.nix
    ./shells/fish.nix
    ./shells/starship.nix
    ./utils/bat.nix
    ./utils/git.nix
    ./utils/gpg.nix
    ./utils/htop.nix
    ./terminals/alacritty.nix
  ];

  # Enable home-manager
  programs.home-manager.enable = true;

  # Personal Packages
  home.packages = with pkgs; [
    # Base
    tmux
    exa
    hexyl
    file
    neofetch
    libtool
    sshfs
    mosh

    # Hacking
    exiftool
    netcat
    nmap
    whois
    bind # for dig

    # Desktop
    firefox
    thunderbird
    alacritty
    virt-manager
    virt-viewer
    protonmail-bridge

    # Chat
    discord
    riot-desktop
    teams
    slack

    # Gaming
    minecraft
    steam
    wine
    winetricks
    protontricks

    # Code-dev
    rustc
    cargo
    clippy
    llvm
    lld
    lldb
    clang
    python3
    cmake
    gnumake
    crystal
    ghc
    cabal-install
    jre
    jdk
    mono
    go
    gosec
    fira
    fira-code
    fira-code-symbols
    fira-mono
    nodejs
    pandoc
    jq
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
    TERM = "alacritty";
  };
}
