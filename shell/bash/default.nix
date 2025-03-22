{ pkgs, ... }:
{
  # default to false
  # Prefer to use zshrc
  # for OS like ubuntu, its complicated to mess with the built in bash
  programs.bash.enable = false;
  programs.bash.bashrcExtra = builtins.readFile ./config/.bashrc;
}
