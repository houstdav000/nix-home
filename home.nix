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
    ./languages/cpp.nix
    #./languages/csharp.nix
    ./languages/go.nix
    ./languages/haskell.nix
    ./languages/java.nix
    ./languages/javascript.nix
    ./languages/python.nix
    ./languages/scheme.nix
    ./languages/rust.nix
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

    # Extra Shells
    elvish
    mosh
    powershell
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
    radare2
    whois

    # Music
    #mpd
    #ncmpcpp

    # Development
    ansible
    binutils
    bison
    cloc
    crystal
    flex
    gnumake
    hugo
    jekyll
    jq
    nixfmt
    pandoc
    sonic-pi
    tectonic
    texlive.combined.scheme-full
    tikzit
  ];
}
