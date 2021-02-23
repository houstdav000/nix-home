{ pkgs, config, ... }: {
  home.packages = with pkgs; [
    termite
  ];

  xdg.configFile."termite" = {
    source = ../../dotfiles/.config/termite;
    recursive = true;
  };
}
