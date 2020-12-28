{ pkgs, config, ... }: {
  # Install direnv
  home.packages = with pkgs; [
    nix-direnv
  ];

  # Copy config file
  xdg.configFile.".direnv/direnvrc".source = ../dotfiles/.config/direnv/direnvrc;
}
