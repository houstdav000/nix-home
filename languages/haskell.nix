# haskell.nix
#
# Configuration and installation for haskell programming

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    cabal-install
    ghc
  ];
}
