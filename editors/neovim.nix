# neovim.nix
#
# Install and set up neovim

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    neovim
  ];

  xdg.configFile."nvim" = {
    source = ../dotfiles/.config/nvim;
    recursive = true;
  };
}
