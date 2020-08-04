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

    # Hacking
    bind # for dig
    burpsuite
    exiftool
    foremost
    ghidra-bin
    netcat
    nmap
    openssl
    python38Packages.binwalk-full
    radare2
    whois
    wireshark

    # Desktop
    chromium
    firefox
    freerdp
    jre
    libreoffice
    okular
    protonmail-bridge
    remmina
    qpdfview
    shutter
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
    crystal
    gnumake
    jekyll
    jq
    nodejs
    pandoc
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
    cascadia-code
    dejavu_fonts
    fira
    fira-code
    fira-code-symbols
    fira-mono
    hack-font
    hasklig
    nerdfonts
    vistafonts
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
    TERM = "alacritty";
  };
}
