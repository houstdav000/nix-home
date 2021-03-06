{ pkgs, config, ... }: {
  home.packages = with pkgs; [
    zsh
  ];

  home.file.".zshrc".source = ../dotfiles/.zshrc;

  xdg.configFile."zsh/config.zsh".source = ../dotfiles/.config/zsh/config.zsh;
  xdg.configFile."zsh/alias.zsh".source = ../dotfiles/.config/zsh/alias.zsh;
  xdg.configFile."zsh/functions.zsh".source = ../dotfiles/.config/zsh/functions.zsh;
  xdg.configFile."zsh/plugin.zsh".source = ../dotfiles/.config/zsh/plugin.zsh;
}
