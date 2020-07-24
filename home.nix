# home.nix
#
# Personal Home-manager configuration
#
# https://nixos.wiki/wiki/Home_Manager

{ config, pkgs, ... }: {

  nixpkgs.config.allowUnfree = true;

  imports = [
    ./editors/editorconfig.nix
    ./editors/neovim.nix
    ./editors/vscodium.nix
    ./shells/fish.nix
    ./shells/starship.nix
    ./utils/bat.nix
    ./utils/git.nix
    ./utils/gpg.nix
    ./utils/htop.nix
    ./utils/neofetch.nix
    ./utils/ssh.nix
    ./terminals/alacritty.nix
  ];

  # Enable home-manager
  programs.home-manager.enable = true;

  # Personal Packages
  home.packages = with pkgs; [
    # Base
    exa
    file
    hexyl
    libtool
    mosh
    sshfs
    tmux

    # Hacking
    bind # for dig
    exiftool
    netcat
    nmap
    whois

    # Desktop
    chromium
    firefox
    ksnip
    libreoffice
    protonmail-bridge
    qpdfview
    thunderbird
    virt-manager
    virt-viewer
    xournalpp
    zathura

    # Music
    mpd
    ncmpcpp

    # Video
    vlc
    openshot-qt

    # Chat
    discord
    riot-desktop
    slack
    teams

    # Gaming
    minecraft
    protontricks
    steam
    wine
    winetricks

    # Development
    cabal-install
    cargo
    clang
    clippy
    cmake
    crystal
    ghc
    gnumake
    go
    gosec
    jdk
    jq
    jre
    llvm
    lld
    lldb
    mono
    nodejs
    pandoc
    python3
    racket
    rustc

    # Audio Editing
    audacity
    lmms

    # Drawing
    gimp
    inkscape
    krita

    # Fonts
    fira
    fira-code
    fira-code-symbols
    fira-mono
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
    TERM = "alacritty";
  };
}
