{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./hosts/default/configuration.nix
          # inputs.home-manager.nixosModules.default
        ];
      };

      homeConfigurations = {
        blitzert = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./hosts/default/home.nix ];
          # can use extraspecialargs or something
        };
      };
    };
}
