# git.nix
#
# Install git and config files for it

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs.gitAndTools; [
    git
    gh
    gitflow
  ];

  xdg.configFile."git/config".source = ../dotfiles/.config/git/config;
  xdg.configFile."git/ignore".source = ../dotfiles/.config/git/config;
}
