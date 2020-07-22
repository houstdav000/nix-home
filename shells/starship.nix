# starship.nix
#
# Set up an ots for fish

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    starship
  ];

  xdg.configFile."starship.toml".source = ../dotfiles/.config/starship.toml;
}
