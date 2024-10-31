{
  description = "jcts nvim";
  
  inputs = {
    nixpkgs.url = "github:NixOs/nixpkgs";
  };

  outputs = { self, nixpkgs }: let
    overlayMyNeovim = prev: final: {
      myNeovim = import ./packages/myNeovim.nix {
        pkgs = final;
      };
    };

    mkPkgs = system: import nixpkgs {
      system = system;
      overlays = [overlayMyNeovim];
    };

    systems = ["aarch64-darwin" "x86_64-linux" "aarch64-linux"];
  in {
    packages = builtins.mapAttrs (system: _: {
      default = (mkPkgs system).myNeovim;
    }) (builtins.listToAttrs (map (system: { name = system; value = {}; }) systems));

    apps = builtins.mapAttrs (system: _: {
      default = {
        type = "app";
        program = "${(mkPkgs system).myNeovim}/bin/nvim";
      };
    }) (builtins.listToAttrs (map (system: { name = system; value = {}; }) systems));
  };
}
