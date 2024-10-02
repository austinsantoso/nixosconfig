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
    google-cloud-sdk
  ];
}
