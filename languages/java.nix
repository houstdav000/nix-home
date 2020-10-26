# java.nix
#
# Programming environment for Java

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    jdk
    jre
    #jdk8
    #junit # Broken package
  ];
}
