{ pkgs, ... }:
{
	programs.vim.enable = true;	

	programs.vim.extraConfig = builtins.readFile ./config/.vimrc;
}
