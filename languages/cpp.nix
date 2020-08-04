# cpp.nix
#
# Install and configure c/cpp environment

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    clang
    cmake
    #gcc
    #gdb
    lld
    lldb
  ];
}
