{ pkgs, config, ... }: {
  home.packages = with pkgs; [
    termite
  ];

  xdg.configFile."termite/config".source = ../../dotfiles/.config/termite/config;
}
