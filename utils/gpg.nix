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

  home.file.".gnupg/gpg.conf".source = ../dotfiles/.gnupg/gpg.conf;
  home.file.".gnupg/gpg-agent.conf".source = ../dotfiles/.gnupg/gpg-agent.conf;
}
