# alacritty.nix
#
# Install and set up Alacritty

{ config, pkgs, lib, ... }: {
  programs.alacritty.enable = true;

  xdg.configFile."alacritty/alacritty.yml".source = ../../dotfiles/.config/alacritty/alacritty.yml;
}
