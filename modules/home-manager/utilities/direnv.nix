{ pkgs, ... }:
{
	programs.direnv.enable = true;
	programs.direnv.nix-direnv.enable = true;

	programs.direnv.enableBashIntegration = true;
}
