# NixOS Setup

This is a high level how I setup NixOS.

## Install flakes

Add the following to `configuration.nix`, found in `/etc/nixos/`.
Flakes allow us to pin to specific versions.

```
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
```
Then rebuild the system to apply the changes

```
  sudo nixos-rebuild switch
```

We can then initialize a flake in our home directory
```
  cd ~
  mkdir mysystem
  cd mysystem
  nix flake init
  # You can also copy /etc/nixos/ here for easier management
  # The flake can refer to the local copy
  cp /etc/nixos .
```
Feel free to copy the content of [flake.nix](./flake.nix).

## Install Home Manager

[Home Manager](https://nix-community.github.io/home-manager/index.xhtml#ch-introduction) is a nix powered tool to manage user home files.
This is used to configure things like tmux, aliases.
Because NixOS is setup to use flakes, this needs to be installed as a module.

We need to do `sudo nixos-rebuild switch --flake .` if we want home manager to update.
We need `sudo` unlike the standalone installation, but we do both the system and home manager updates in one go.

We need to add home-manager as a module in our `configuration.nix`
```
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "austin" = import ./home.nix;
    };
  };
```

> It should just work how I remembered it
> 
> My expectation of nix

