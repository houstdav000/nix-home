# bash.nix
#
# Configure and set up bash from dotfiles repo

{ config, pkgs, lib, ... }: {
  programs.bash = {
    enable = true;
    historySize = 20000;
    historyControl = "ignoredups";
  };

  home.file.".inputrc".source = ../dotfiles/.inputrc;
}
