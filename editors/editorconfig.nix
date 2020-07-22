# editorconfig.nix
#
# Copy and set up editorconfig files

{ config, pkgs, lib, ... }: {
  home.file.".editorconfig".source = ../dotfiles/.editorconfig;
}
