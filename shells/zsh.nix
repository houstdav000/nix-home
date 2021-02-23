{ pkgs, config, ... }: {
  home.packages = with pkgs; [
    zsh
    zsh-autosuggestions
  ];

  home.file.".zshrc".source = ../dotfiles/.zshrc;

  xdg.configFile."zsh" = {
    source = ../dotfiles/.config/zsh;
    recursive = true;
  };
}
