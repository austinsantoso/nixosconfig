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

    # Plugins are managed by vim.pack
    # could not be bothered to do everything the nix way
    # dependencies of tree-sitter
    extraPackages = with pkgs; [
      # Tree-sitter CLI (grammars provided by withAllGrammars plugin)
      tree-sitter
      gcc
    ];
  };

  # Considering to use mkOutOfStoreSymlink https://github.com/calops/nix/blob/df50d100021894151fae164242e16d48915cbae9/modules/programs/neovim/default.nix#L100
  #
  # home.file.".config/nvim/init.lua".source = ./nvim_pack/init.lua;
  # home.file.".config/nvim/lua".source = ./nvim_pack/lua;

  xdg.configFile = {
    "nvim/init.lua".enable = lib.mkForce false;
    "nvim".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nixos-configuration/modules/personal/editor/nvim/nvim_pack";
  };

  # Manually install rather than MASON
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
