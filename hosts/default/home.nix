{ config, pkgs, ... }:

{
  home = {
    username = "blitzert";
    homeDirectory = "/home/blitzert";
    stateVersion = "24.05";
    packages = with pkgs; [
      hello
    ];
  };

  imports = [
    ../../modules/home-manager/default.nix
  ];
}
