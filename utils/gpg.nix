# gpg.nix
#
# Configuration of gnupg

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    gnupg
  ];

  services.gpg-agent = {
    defaultCacheTtl = 1800;
    enableSshSupport = true;
  };
}
