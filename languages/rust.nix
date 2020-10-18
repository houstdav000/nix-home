# rust.nix
#
# Install and configure rust environment

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    cargo
    clippy
    rustc
    rustfmt
  ];
}
