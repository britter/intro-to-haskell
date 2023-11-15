{
  description = "A Hello World in Haskell with a dependency and a devShell";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-23.05";

  outputs = {
    self,
    nixpkgs,
  }: {
    formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.alejandra;
    devShells.x86_64-linux.default = let
      haskellPackages = nixpkgs.legacyPackages.x86_64-linux.haskellPackages;
    in
      nixpkgs.legacyPackages.x86_64-linux.pkgs.mkShell {
        buildInputs = with haskellPackages; [
          haskell-language-server
          ghcid
        ];
      };
  };
}
