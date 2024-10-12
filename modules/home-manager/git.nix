{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "blitzert";
    userEmail = "santoso.austin@gmail.com";
    extraConfig = {
      core = {
        editor = "vim";
        # pager = "delta"; # setup by programs.gitdelta.enable = true;
      };
      interactive = {
        # diffFilter = "delta --color-only"; # setup by programs.gitdelta.enable = true;
      };
      delta = {
        navigate = true; # use n and N to move between diff sections
        side-by-side = true;
        # delta detects terminal colors automatically; set one of these to disable auto-detection
        # dark = true;
        # light = true;
      };
      merge = {
        conflictstyle = "diff3";
      };
      diff = {
        colorMoved = "default";
      };
    };

    delta.enable = true;
  };
}
