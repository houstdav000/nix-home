# neofetch.nix
#
# Configure neofetch from dotfiles

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    neofetch
  ];

  xdg.configFile."neofetch/config.conf".source = ../dotfiles/.config/neofetch/config.conf;
}
