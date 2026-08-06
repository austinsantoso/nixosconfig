{ pkgs, ... }:
{
  home.file.".config/hypr".source = ./hypr;
  home.file.".config/waybar".source = ./waybar;
}
