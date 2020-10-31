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
  home.file.".bashrc".source = ../dotfiles/.bashrc;

  # Copy .config/bash
  xdg.configFile."bash/config.bash".source = ../dotfiles/.config/bash/config.bash;
  xdg.configFile."bash/alias.bash".source = ../dotfiles/.config/bash/alias.bash;
  xdg.configFile."bash/functions.bash".source = ../dotfiles/.config/bash/functions.bash;
}
