{ pkgs, ... }:
{
  imports = [
    ./editor/default.nix
    # ./tmux/default.nix
    # ./git.nix
    # ./utilities/default.nix
    # ./shell/default.nix
    ./hyprland/default.nix
  ];

  home.packages = with pkgs; [
    ripgrep
    jq

    # nerd font of choice
    # pkgs.nerd-fonts.jetbrains-mono

    # Commonly used programming language
    python3
    go
  ];
}
