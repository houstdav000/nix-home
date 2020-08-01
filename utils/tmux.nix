# tmux.nix
#
# Tmux config file pull

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    tmux
  ];

  xdg.configFile."tmux/tmux.conf".source = ../dotfiles/.config/tmux/tmux.conf;
}
