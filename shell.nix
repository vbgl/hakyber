with import <nixpkgs> {};

mkShell {
  packages = [
    jasmin-compiler
    easycrypt
    alt-ergo
    cvc4
    z3
  ];
}
