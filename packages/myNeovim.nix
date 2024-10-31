{ pkgs }:
let
  customRC = import ../config/default.nix { inherit pkgs; };
  plugins = import ../plugins.nix { inherit pkgs; };
in
pkgs.neovim.override {
  configure = {
    inherit customRC;
    packages.all.start = plugins;
  };
}
