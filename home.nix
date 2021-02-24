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
    ./shells/bash.nix
    ./shells/fish.nix
    ./shells/starship.nix
    ./shells/zsh.nix
    ./utils/bat.nix
    ./utils/direnv.nix
    ./utils/git.nix
    ./utils/gpg.nix
    ./utils/htop.nix
    ./utils/neofetch.nix
    ./utils/ssh.nix
    ./utils/tmux.nix

    # Desktop Utilities
    ./desktop/desktop.nix
  ];

  # Enable home-manager
  programs.home-manager.enable = true;

  home.username = "david";
  home.homeDirectory = "/home/david";

  # Personal Packages
  home.packages = with pkgs; [
    # Base
    exa
    hexyl
    libtool
    man-db
    openssl
    sshfs
    sshuttle

    # File tools
    file
    ranger

    # File Compression
    bzip2
    gzip
    p7zip
    unzip
    zip

    # Directory searching
    fd
    fzf

    # File searching
    gnugrep
    ripgrep

    # Network tools
    aria2
    bind # for dig
    netcat
    nmap
    traceroute
    whois

    # Email
    #neomutt

    # Web
    #w3m
    #nyxt

    # Extra Shells
    elvish
    mosh
    #powershell
    xonsh

    # Hacking
    aircrack-ng
    exiftool
    foremost
    python38Packages.binwalk-full
    #pwndbg
    #pwntools
    radare2

    # Music
    #mpd
    #ncmpcpp

    # Development
    ansible
    cloc
    github-cli
    hyperfine
    jq
    nixfmt
  ];
}
