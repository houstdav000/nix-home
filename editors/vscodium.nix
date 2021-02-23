# vscode.nix
#
# Installation and configuration of VSCode.

{ config, pkgs, lib, ... }: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      #bbenoist.Nix
      #cmschuetz12.wal
      #formulahendry.auto-close-tag
      #james-yu.latex-workshop
      #justusadam.language-haskell
      #ms-vscode.cpptools
      #ms-vscode-remote.remote-ssh
      #ms-python.python
      #redhat.vscode-yaml
      #scala-lang.scala
      #scalameta.metals
      #skyapps.fish-vscode
      #llvm-org.lldb-vscode
    ];
  };

  xdg.configFile."VSCodium" = {
    source = ../dotfiles/.config/VSCodium;
    recursive = true;
  };
}
