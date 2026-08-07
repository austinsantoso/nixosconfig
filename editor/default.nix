{
  config,
  lib,
  pkgs,
  ...
}:
{
  imports = [
    ./vim/vim.nix
    ./nvim/default.nix
  ];

  # austin.editor.nvim.enable = true;
}
