# java.nix
#
# Programming environment for Java

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    jdk
    jdk8
    junit
  ];
}
