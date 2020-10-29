{ pkgs ? import <nixpkgs> {} }:
let
  inherit (pkgs) mkShell nodePackages;
  inherit (nodePackages) serve;
in mkShell {
  buildInputs = [
    serve
  ];

  shellHook = ''
    alias serve='serve -l 1234'
  '';
}
