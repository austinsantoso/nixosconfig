{
  config,
  lib,
  pkgs,
  ...
}:
{
  options.austin.editor.nvim = {
    enable = lib.mkEnableOption "enable NeoVIM (with plugins)";
  };

  config = lib.mkIf config.austin.editor.nvim.enable {
    programs.neovim =
      let
        toLua = str: "lua << EOF\n${str}\nEOF\n";
        toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
      in
      {
        enable = true;

        extraPackages = with pkgs; [
          # setup nix
          nixd
          nixfmt-rfc-style

          # setup python
          python313Packages.python-lsp-server
          python314
          pylint

          # setup go
          gopls
          golangci-lint

          # setup typescript
          typescript-language-server
          eslint_d
          # nodePackages.prettier
          prettierd

          # misceleneous
          lua-language-server
          stylua
          jq
        ];

        extraLuaConfig = ''
          ${builtins.readFile ./lua/core/options.lua}
          ${builtins.readFile ./lua/core/keymaps.lua}

          vim.cmd.colorscheme('catppuccin-macchiato')

          ${builtins.readFile ./lua/plugins/alpha.lua}
          ${builtins.readFile ./lua/plugins/bufferline.lua}
          ${builtins.readFile ./lua/plugins/dressing.lua}
          ${builtins.readFile ./lua/plugins/lualine.lua}

          ${builtins.readFile ./lua/plugins/telescope.lua}
          ${builtins.readFile ./lua/plugins/marks.lua}
          ${builtins.readFile ./lua/plugins/indent-blankline.lua}

          -- IDE stuff
          ${builtins.readFile ./lua/plugins/ide/treesitter.lua}
          ${builtins.readFile ./lua/plugins/ide/nvim-cmp.lua}
          ${builtins.readFile ./lua/plugins/ide/lspinfo.lua}
          ${builtins.readFile ./lua/plugins/ide/linting.lua}
          ${builtins.readFile ./lua/plugins/ide/formatting.lua}

          ${builtins.readFile ./lua/plugins/nvim-tree.lua}
          ${builtins.readFile ./lua/plugins/whichkey.lua}
        '';
        # ${builtins.readFile ./lua/plugins/ide/indent-blankline.lua}

        plugins = with pkgs.vimPlugins; [
          # Coloscheme
          # gruvbox-nvim
          catppuccin-nvim
          vim-tmux-navigator

          # greeter
          alpha-nvim

          # icons
          nvim-web-devicons

          bufferline-nvim
          lualine-nvim
          dressing-nvim
          nvim-tree-lua
          indent-blankline-nvim

          marks-nvim

          telescope-nvim
          telescope-fzf-native-nvim

          # IDE stuff
          {
            plugin = (
              nvim-treesitter.withPlugins (p: [
                p.tree-sitter-nix
                p.tree-sitter-vim
                p.tree-sitter-bash
                p.tree-sitter-lua
                p.tree-sitter-json
                p.tree-sitter-go
                p.tree-sitter-templ
                p.tree-sitter-regex
                p.tree-sitter-markdown
                p.tree-sitter-markdown-inline
                p.tree-sitter-yaml
                p.tree-sitter-javascript
                p.tree-sitter-typescript
              ])
            );
            config = "";
          }
          rainbow-delimiters-nvim

          # Completion
          nvim-cmp
          cmp-nvim-lsp
          cmp-buffer
          cmp-path
          luasnip
          cmp_luasnip
          friendly-snippets
          lspkind-nvim
          nvim-lspconfig
          nvim-lint
          conform-nvim

          vim-tmux-navigator
          which-key-nvim
        ];
      };
  };
}
