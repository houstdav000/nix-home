# tmux.nix
#
# Tmux config file pull

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    tmux
  ];

  xdg.configFile."tmux" = {
    source = ../dotfiles/.config/tmux;
    recursive = true;
  };
}
