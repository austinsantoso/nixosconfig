alias cdd="cd .."

export NIX_CONFIG_HOME="$HOME/nixos-configuration"

alias nix-hm-switch="home-manager switch --flake $NIX_CONFIG_HOME"

fastfetch

# Source - https://stackoverflow.com/a/903973␍
# Posted by anon, modified by community. See post 'Timeline' for change history␍
# Retrieved 2026-08-06, License - CC BY-SA 2.5␍
# ctrl-x ctrl-e to edit commad in vim
autoload edit-command-line
zle -N edit-command-line
bindkey '^Xe' edit-command-line

