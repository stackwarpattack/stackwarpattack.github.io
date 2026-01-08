{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        serve = pkgs.writeShellApplication {
          name = "serve";
          text = ''
            ${pkgs.hugo}/bin/hugo serve
          '';
        };
      in
      with pkgs; rec {
        devShells.default = mkShell {
          buildInputs = [ hugo ];
        };

        # For serving the website run:
        # nix run
        apps.default = {
          type = "app";
          program = "${serve}/bin/serve";
        };
      });
}
