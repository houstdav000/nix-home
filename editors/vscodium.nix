# vscode.nix
#
# Installation and configuration of VSCode.

{ config, pkgs, lib, ... }: {
  programs.vscode = {
    enable = true;
    package = "pkgs.vscodium";
    extensions = with pkgs.vscode-extensions; [
      bbenoist.Nix
      bmalehorn.vscode-fish
      dbaeumer.vscode-eslint
      editorconfig.editorconfig
      golang.go
      llvm-vs-code-extensions.vscode-clangd
      ms-python.python
      rust-lang.rust
      vscode-icons-team.vscode-icons
    ];
  };

  xdg.configFile."VSCodium/User/settings.json".source = ../dotfiles/.config/VSCodium/User/settings.json;
}
