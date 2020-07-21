# fish.nix
#
# Fish installation and configuration

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    fish
  ];

  xdg.configFile."fish/config.fish".source = ../dotfiles/.config/fish/config.fish;
  xdg.configFile."fish/fishfile".source = ../dotfiles/.config/fish/fishfile;
}
