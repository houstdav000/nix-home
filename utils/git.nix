# git.nix
#
# Install git and config files for it

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs.gitAndTools; [
    git
    gh
    gitflow
  ];

  xdg.configFile."git" = {
    source = ../dotfiles/.config/git;
    recursive = true;
  };
}
