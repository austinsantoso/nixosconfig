{ pkgs, ... }:
{
	programs.tmux.enable = true;

	programs.tmux.extraConfig = builtins.readFile ./.tmux.conf;
}
