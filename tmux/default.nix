{ pkgs, ... }:
{
  programs.tmux.enable = true;

  # programs.tmux.extraConfig = builtins.readFile ./default.conf + builtins.readFile ./tmux.conf;
  programs.tmux.extraConfig = builtins.readFile ./default.conf + builtins.readFile ./plugin.conf;

  # default to ZSH
  programs.tmux.shell = "${pkgs.zsh}/bin/zsh";

  programs.tmux.plugins = with pkgs; [
    {
      plugin = tmuxPlugins.catppuccin;
      extraConfig = ''
        set -g @catppuccin_window_left_separator ""
        set -g @catppuccin_window_right_separator " "
        set -g @catppuccin_window_middle_separator " █"
        set -g @catppuccin_window_number_position "right"
        set -g @catppuccin_window_default_fill "number"
        set -g @catppuccin_window_default_text "#W"
        set -g @catppuccin_window_current_fill "number"
        set -g @catppuccin_window_current_text "#W#{?window_zoomed_flag,(),}"
        set -g @catppuccin_status_modules_right "directory date_time"
        set -g @catppuccin_status_modules_left "session"
        set -g @catppuccin_status_left_separator  " "
        set -g @catppuccin_status_right_separator " "
        set -g @catppuccin_status_right_separator_inverse "no"
        set -g @catppuccin_status_fill "icon"
        set -g @catppuccin_status_connect_separator "no"
        set -g @catppuccin_directory_text "#{b:pane_current_path}"
        set -g @catppuccin_date_time_text "%H:%M"
      '';
    }
    tmuxPlugins.vim-tmux-navigator
    tmuxPlugins.tmux-fzf
  ];
}
