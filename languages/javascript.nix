# javascript.nix
#
# Configuration and installation for JavaScript Programming

{ config, pkgs, lib, ...}: {
  home.packages = with pkgs; [
    deno
    nodejs
  ];
} 
