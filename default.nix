{ pkgs, ... }:
{
  imports = [
    ./editor/default.nix
    ./tmux/default.nix
    ./git.nix
    ./utilities/default.nix
    ./shell/default.nix
  ];

  home.packages = with pkgs; [
    ripgrep
    jq

    # nerd font of choice
    # pkgs.nerd-fonts.jetbrains-mono

    # Commonly used programming language
    python314
    go
    nodejs_23
  ];
}
