{ pkgs, ... }:
{
	programs.bash.enable = true;
	programs.bash.bashrcExtra = builtins.readFile ./config/.bashrc;
}
