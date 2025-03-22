{ pkgs, lib, ... }:
{
  programs.bat.enable = true;
  programs.fd.enable = true;

  programs.fzf.enable = true;
  programs.fzf.defaultOptions = [
    "--height 40%"
    "--border"
    "--bind ctrl-d:preview-down,ctrl-u:preview-up" # ctrl-d / ctrl-u scroll the preview pane
  ];

  # When pressing alt-c will list folders to cd into
  # use EZA to preview file tree in that directory
  programs.fzf.changeDirWidgetCommand = "fd --type d --hidden --exclude .git --strip-cwd-prefix";
  programs.fzf.changeDirWidgetOptions = [
    "--preview 'eza --tree --color=always {} | head -200'"
  ];

  # When pressing alt-y will list all possibilities
  # use `bat` when it is a file, use `eza` if directory to show file tree
  programs.fzf.fileWidgetCommand = "fd --hidden --exclude .git --strip-cwd-prefix";
  programs.fzf.fileWidgetOptions = [
    "--preview 'if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi'"
  ];

  programs.lazygit.enable = true;

  home.packages = with pkgs; [
    # fzf-git-sh
    simple-http-server
  ];

  # there are other ways to do this, but lets go with this
  # some other ways I want to try is to make this a flake, and source it from there
  programs.zsh.initExtra = lib.mkAfter ''
    source "${pkgs.fzf-git-sh}/share/fzf-git-sh/fzf-git.sh"
  '';

  programs.eza.enable = true;
}
