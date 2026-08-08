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
  # home.file.".config/nvim/init.lua".source = ./nvim_pack/init.lua;
  # home.file.".config/nvim/lua".source = ./nvim_pack/lua;

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

    # java 21
    jdk21_headless
    google-java-format
    jdt-language-server
  ];
}
