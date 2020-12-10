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
    ./utils/bat.nix
    ./utils/git.nix
    ./utils/gpg.nix
    ./utils/htop.nix
    ./utils/neofetch.nix
    ./utils/ssh.nix
    ./utils/tmux.nix

    # Desktop Utilities
    #./desktop/desktop.nix
  ];

  # Enable home-manager
  programs.home-manager.enable = true;

  home.username = "david";
  home.homeDirectory = "/home/david";

  # Personal Packages
  home.packages = with pkgs; [
    # Base
    aria2
    exa
    fd
    file
    hexyl
    hyperfine
    libtool
    p7zip
    ripgrep
    sshfs
    traceroute
    qemu
    xsv

    # Email
    #neomutt

    # Web
    #w3m

    # Extra Shells
    elvish
    mosh
    #powershell
    xonsh
    zsh

    # Hacking
    aircrack-ng
    bind # for dig
    exiftool
    foremost
    netcat
    nmap
    openssl
    python38Packages.binwalk-full
    #pwndbg
    #pwntools
    radare2
    whois

    # Music
    #mpd
    #ncmpcpp

    # Development
    ansible
    cloc
    github-cli
    nixfmt
  ];
}
