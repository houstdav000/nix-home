{ config, pkgs, ... }: {
  imports = [
    ./terminals/termite.nix
    ./window-managers/sway.nix
  ];

  # Desktop Packages
  home.packages = with pkgs; [
    # Hacking
    #burpsuite
    #ghidra-bin
    #radare2-cutter
    #wireshark

    # Browsers
    #chromium
    #firefox

    # Remote
    #freerdp
    #remmina

    # Email
    #protonmail-bridge
    #thunderbird

    # Document
    #libreoffice
    #okular
    #qpdfview
    #xournalpp
    #zathura

    # Virtual Desktops
    #virt-manager
    #virt-viewer

    # Snipping
    #shutter

    # Video Conferencing
    #zoom-us

    # Music
    #audacity
    #elisa
    #lmms
    #rhythmbox

    # Drawing
    #gimp
    #inkscape
    #krita

    # Video
    vlc
    #openshot-qt
    #obs-studio

    # Chat
    #discord
    #element-desktop
    #signal-desktop
    #slack
    #teams

    # Gaming
    #minecraft
    #protontricks
    #steam
    #winetricks
    #wine

    # Fonts
    #cascadia-code
    #dejavu_fonts
    #fira
    #fira-code
    #fira-code-symbols
    #fira-mono
    #hack-font
    #hasklig
    #nerdfonts
    #vistafonts
  ];
}
