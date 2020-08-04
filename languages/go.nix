# go.nix
#
# Programming environment for the Go Language

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    go
    gosec
  ];
}
