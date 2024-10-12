{ pkgs, ... }:
{
  programs.zsh.enable = true;
  programs.zsh.initExtra = builtins.readFile ./config/.zshrc;

  # try add plugins
  programs.zsh = {
    syntaxHighlighting.enable = true;
  };

}
