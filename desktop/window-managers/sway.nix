{ pkgs, config, ... }: {

  # Install sway wm
  #home.packages = with pkgs; [
  #  sway
  #  swaylock
  #  swayidle
  #  waybar
  #  mako
  #]

  # Primary Sway config
  xdg.configFile."sway" = {
    source = ../../dotfiles/.config/sway;
    recursive = true;
  };

  # Waybar config
  xdg.configFile."waybar" = {
    source = ../../dotfiles/.config/waybar;
    recursive = true;
  };

  # swaylock config
  xdg.configFile."swaylock" = {
    source = ../../dotfiles/.config/swaylock;
    recursive = true;
  };
}
