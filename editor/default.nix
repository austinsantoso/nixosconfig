{
  config,
  lib,
  pkgs,
  ...
}:
{
  imports = [
    ./vim/vim.nix
    ./nvim/nvim.nix
  ];

  austin.editor.nvim.enable = true;
}
