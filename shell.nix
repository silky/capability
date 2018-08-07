with (import ./nix {});

{ ghc ? "ghc861"  # One of ghc843, ghc861.
, haskellPackages ? haskell.packages.${ghc}
}:

mkShell {
  inputsFrom = [
    haskellPackages.capabilities-via.env
  ];
  nativeBuildInputs = [
    cabal-install
  ];
}
