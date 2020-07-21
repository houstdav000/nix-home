# neovim.nix
#
# Install and set up neovim

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    neovim
  ];

  xdg.configFile."nvim/init.vim".source = ../dotfiles/.config/nvim/init.vim;
}
