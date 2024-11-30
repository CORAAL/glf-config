# Note: Ce flake est importé via un inputs d'un autre flocon.

{
  description = "Configurations";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      nixosModules.glf-configuration = import self.path { inherit pkgs; };
    };
}

