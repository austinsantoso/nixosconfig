{
  config,
  lib,
  pkgs,
  ...
}:
{
  programs.neovim = {
    enable = true;
    sideloadInitLua = true;
  };
  home.file.".config/nvim".source = ./no_plugin;

  home.packages = with pkgs; [
    # golang
    go
    gopls
    golangci-lint
    go-tools

    # lua
    lua-language-server
    stylua

    # nix
    nixd
    nixfmt
  ];
}
