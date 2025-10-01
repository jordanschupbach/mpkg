{
  description = "A basic flake with a shell";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
      mpkg = pkgs.rPackages.buildRPackage {
        name = "mpkg";
        src = ./.;
      };
    in {
      devShells.default = pkgs.mkShell {
        nativeBuildInputs = [pkgs.bashInteractive];
        buildInputs = with pkgs; [R rPackages.devtools pandoc mpkg];
      };
    });
}
