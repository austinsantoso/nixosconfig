{ pkgs, ... }:
{
	programs.zsh.enable = true;
	programs.zsh.initExtra = builtins.readFile ./config/.zshrc;
}
