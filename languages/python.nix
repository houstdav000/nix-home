# python.nix
#
# Install and manage python and packages

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    # Main Packages
    python3

    # Utilities
    jetbrains.pycharm-community

    # Packages
    python38Packages.binwalk-full
    python38Packages.pandoc-attributes
    python38Packages.pandocfilters
    python38Packages.pip
    python38Packages.pip-tools
    #python38Packages.pwntools
    python38Packages.pycrypto
    python38Packages.pycryptodome
    python38Packages.pylint
    python38Packages.rsa
  ];
}
