# alacritty.nix
#
# Install and set up Alacritty

{ config, pkgs, lib, ... }: {
  programs.alacritty.enable = true;

  xdg.configFile."alacritty" = {
    source = ../../dotfiles/.config/alacritty;
    recursive = true;
  };
}
