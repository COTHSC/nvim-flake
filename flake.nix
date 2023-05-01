#flake.nix
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
      neovim = neovim.packages.aarch64-darwin.neovim;
    };

    overlayMyNeovim = prev: final: {
        myNeovim = import ./packages/myNeovim.nix {
        pkgs = final;
      };
    };

    pkgs = import nixpkgs {
      system = "aarch64-darwin";
      overlays = [overlayFlakeInputs overlayMyNeovim];
    };
  in {
    packages.aarch64-darwin.default =
     pkgs.myNeovim;
    apps.aarch64-darwin.default = {
      type = "app";
      program = "${pkgs.myNeovim}/bin/nvim";
    };
  };
}
