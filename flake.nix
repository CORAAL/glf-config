# Note: Ce flake est importé via un inputs d'un autre flocon.

{
  description = "Configurations";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
  };

  outputs = { nixpkgs, nixos-config }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      nixosConfigurations.iso = pkgs.lib.nixosSystem {
        inherit system;
        modules = [
          # nixos-config.nix-cfg.configuration.nix
          # nixos-config.nix-cfg.glf.default.nix
          # nixos-config.nix-cfg.glf.boot.nix
          # nixos-config.nix-cfg.glf.firefox.nix
          # nixos-config.nix-cfg.glf.fstrim.nix
          # nixos-config.nix-cfg.glf.gaming.nix
          # nixos-config.nix-cfg.glf.gnome.nix
          # nixos-config.nix-cfg.glf.imprimante.nix
          # nixos-config.nix-cfg.glf.nh.nix
          # nixos-config.nix-cfg.glf.nvidia.nix
          # nixos-config.nix-cfg.glf.paquets.nix
          # nixos-config.nix-cfg.glf.pipewire.nix
          # nixos-config.nix-cfg.glf.system.nix
          # nixos-config.nix-cfg.hardware-configuration.nix
        ];
      };
    };
}

