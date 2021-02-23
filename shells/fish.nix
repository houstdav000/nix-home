# fish.nix
#
# Fish installation and configuration

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    fish
  ];

  xdg.configFile."fish" = {
    source = ../dotfiles/.config/fish;
    recursive = true;
  };
}
