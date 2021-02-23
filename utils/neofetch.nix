# neofetch.nix
#
# Configure neofetch from dotfiles

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    neofetch
  ];

  xdg.configFile."neofetch" = {
    source = ../dotfiles/.config/neofetch;
    recursive = true;
  };
}
