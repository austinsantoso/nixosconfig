{
  config,
  lib,
  pkgs,
  ...
}:
{
  imports = [
    # ./nvim.nix
    # ./nvim_no_plugin.nix
    ./nvim_pack.nix
  ];

  # only in nvim.nix
  # austin.editor.nvim.enable = true;
}
