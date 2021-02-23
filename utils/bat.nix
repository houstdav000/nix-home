# bat.nix
#
# Install and configure bat

{ config, pkgs, lib, ... }: {

  home.packages = with pkgs; [
    bat
  ];

  xdg.configFile."bat" = {
    source = ../dotfiles/.config/bat;
    recursive = true;
  };
}
