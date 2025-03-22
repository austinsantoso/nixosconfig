# Nix Home Manager config

This repo contains my home manager config.

## Setup
Current use case is to setup home manager in a new system.
Install Home manager with nix flake as a stand alone [guide](https://nix-community.github.io/home-manager/index.xhtml#sec-flakes-standalone).

Clone this repo in the home manager directory, and import this as a module.
Assuming the installation is in `~/.config/home-manager` directory.

Prefered is to clone this to a subdirectory

```sh
git clone git@github.com:austinsantoso/nixosconfig.git ~/.config/home-manager/modules/personal

```

Then in the generated `home.nix` from home-manager (`~/.config/home-manager/home.nix`).
Add the following line
```

  programs.git = {
    enable = true;
    userName = "your username";
    userEmail = "your email";
  };

  imports = [
    ./modules/personal/default.nix
  ]
```


To update changes to home-manager (assuming default config)
```bash
home-manager switch
```

TODO:
- [] neovim add remove trailing whitespace on save
- [] add lazygit to nvim and planery
- [] add floaterm, to run shell commands
- [] add noice for nicer notifications and terminal

