# bat.nix
#
# Install and configure bat

{ config, pkgs, lib, ... }: {

  home.packages = with pkgs; [
    bat
  ];

  xdg.configFile."bat/config".source = "../dotfiles/.config/bat/config"
}
