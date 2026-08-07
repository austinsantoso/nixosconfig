{ pkgs, ... }:
{
  imports = [
    ./editor/default.nix
    # ./tmux/default.nix
    # ./git.nix
    ./utilities/default.nix
    ./shell/default.nix
    ./hyprland/default.nix
  ];

  home.packages = with pkgs; [
    fastfetch
    ripgrep
    jq

    chromium
    google-chrome

    # nerd font of choice
    pkgs.nerd-fonts.jetbrains-mono

    # Commonly used programming language
    python3
    go
    btop
    htop
  ];

  home.pointerCursor = {
    enable = true;
    gtk.enable = true;
    x11.enable = true;
    name = "Bibata-Modern-Classic";
    package = pkgs.bibata-cursors;
    size = 24;
  };
}
