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
  xdg.configFile."bash" = {
    source = ../dotfiles/.config/bash;
    recursive = true;
  };
}
