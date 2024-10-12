{ pkgs, ... }:
{
  programs.oh-my-posh.enable = true;
  programs.oh-my-posh.enableBashIntegration = false;
  programs.oh-my-posh.settings = builtins.fromJSON (
    builtins.unsafeDiscardStringContext (builtins.readFile ./config/oh-my-posh/base.json)
  );
}
