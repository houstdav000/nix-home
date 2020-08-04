# scheme.nix
#
# Programming environment for the scheme language

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    chicken
    racket
  ];
}
