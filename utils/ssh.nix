# ssh.nix
#
# Implement ssh config file from dotfiles

{ config, pkgs, lib, ... }: {
  programs.ssh.enable = true;

  home.file.".ssh/config".source = ../dotfiles/.ssh/config;
}
