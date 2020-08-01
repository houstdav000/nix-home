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
    ./languages/python.nix
    ./languages/rust.nix
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
    aria2
    exa
    file
    hexyl
    libtool
    mosh
    p7zip
    sshfs
    tmux

    # Hacking
    bind # for dig
    burpsuite
    exiftool
    foremost
    ghidra-bin
    netcat
    nmap
    python38Packages.binwalk-full
    radare2
    whois
    wireshark

    # Desktop
    chromium
    firefox
    freerdp
    libreoffice
    okular
    protonmail-bridge
    remmina
    qpdfview
    thunderbird
    virt-manager
    virt-viewer
    xournalpp
    zathura

    # Music
    elisa
    mpd
    ncmpcpp
    rhythmbox

    # Video
    vlc
    openshot-qt
    obs-studio

    # Chat
    element-desktop
    ripcord
    signal-desktop
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
    clang
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
    racket
    texlive.combined.scheme-basic
    tikzit

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
