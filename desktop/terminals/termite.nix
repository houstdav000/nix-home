{ pkgs, config, ... }: {
  home.packages = with pkgs; [
    termite
  ];
}
