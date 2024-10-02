{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "blitzert";
    userEmail = "santoso.austin@gmail.com";
    extraConfig = {
      core = {
        editor = "vim";
      };
    };
  };
}
