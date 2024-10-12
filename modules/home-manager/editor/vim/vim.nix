{
  config,
  lib,
  pkgs,
  ...
}:
{
  options.austin.editor.vim = {
    enable = lib.mkOption {
      description = "enable VIM";
      type = lib.types.bool;
      default = true;
    };
  };

  config = lib.mkIf config.austin.editor.vim.enable {
    programs.vim.enable = true;
    programs.vim.extraConfig = builtins.readFile ./config/.vimrc;

    programs.vim.defaultEditor = true;
  };
}
