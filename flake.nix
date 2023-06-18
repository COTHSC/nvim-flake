{
  description = "jcts nvim";
  inputs = {
    nixpkgs = {
      url = "github:NixOs/nixpkgs";
    };
    neovim = {
      url = "github:neovim/neovim/stable?dir=contrib";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = {
    self,
    nixpkgs,
    neovim,
  }: let
    overlayFlakeInputs = prev: final: {
      neovim = neovim.packages."${final.system}".neovim;
    };

    overlayMyNeovim = prev: final: {
        myNeovim = import ./packages/myNeovim.nix {
        pkgs = final;
      };
    };

    mkPkgs = system: import nixpkgs {
      system = system;
      overlays = [overlayFlakeInputs overlayMyNeovim];
    };

    systems = ["aarch64-darwin" "x86_64-linux"];
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
