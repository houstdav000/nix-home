# bash.nix
#
# Configure and set up bash from dotfiles repo

{ config, pkgs, lib, ... }: {
  programs.bash = {
    enable = true;
  };

  # Source in environment variables file
  home.file.".profile".source = ../dotfiles/.profile;
  home.file.".bash_profile".source = ../dotfiles/.bash_profile;

  # Copy .config/bash
  xdg.configFile."bash/config.sh".source = ../dotfiles/.config/bash/config.sh;
  xdg.configFile."bash/alias.sh".source = ../dotfiles/.config/bash/alias.sh;
}
