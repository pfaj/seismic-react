{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = {
    self,
    nixpkgs,
  }: let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in {
    devShell.x86_64-linux = with pkgs;
      mkShell {
        buildInputs = [
          nodejs_22
        ];

        shellHook = ''
        '';
      };
  };
}
