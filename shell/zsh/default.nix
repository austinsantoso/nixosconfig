{ pkgs, ... }:
{
  programs.zsh.enable = true;
  programs.zsh.initContent = builtins.readFile ./config/.zshrc;

  # try add plugins
  programs.zsh = {
    syntaxHighlighting.enable = true;
  };

}
