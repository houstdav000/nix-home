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
  xdg.configFile."sway/config".source = ../../dotfiles/.config/sway/config;
  xdg.configFile."sway/definitions".source = ../../dotfiles/.config/sway/definitions;

  # Input definitions
  xdg.configFile."sway/inputs/keyboard".source = ../../dotfiles/.config/sway/inputs/keyboard;
  xdg.configFile."sway/inputs/touchpad".source = ../../dotfiles/.config/sway/inputs/touchpad;

  # Output Definitions
  xdg.configFile."sway/outputs/screen".source = ../../dotfiles/.config/sway/outputs/screen;

  # Theme files
  xdg.configFile."sway/themes/matcha-green".source = ../../dotfiles/.config/sway/themes/matcha-green;

  # Waybar config
  xdg.configFile."waybar/config".source = ../../dotfiles/.config/waybar/config;
  xdg.configFile."waybar/style.css".source = ../../dotfiles/.config/waybar/style.css;

  # swaylock config
  xdg.configFile."swaylock/config".source = ../../dotfiles/.config/swaylock/config;
}
