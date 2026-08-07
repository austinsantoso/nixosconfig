{
  config,
  lib,
  pkgs,
  ...
}:
{
  imports = [
    ./nvim.nix
    ./nvim_no_plugin.nix
  ];

  # austin.editor.nvim.enable = true;
}
