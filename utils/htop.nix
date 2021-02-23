# htop.nix
#
# Configure and install htoprc from dotfiles

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    htop
  ];

  xdg.configFile."htop" = {
    source = ../dotfiles/.config/htop;
    recursive = true;
  };
}
