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
    #./languages/java.nix
    ./languages/python.nix
    ./languages/scheme.nix
    ./languages/rust.nix
    #./shells/bash.nix
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
    file
    hexyl
    libtool
    mosh
    p7zip
    sshfs

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

    ## Development
    ansible
    crystal
    gnumake
    hugo
    jekyll
    jq
    nodejs
    pandoc
    tectonic
    tikzit
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
    #TERM = "alacritty";
  };
}
