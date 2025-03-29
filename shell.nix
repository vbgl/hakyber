{ pkgs ?
    import (fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/archive/bfa9810ff7104a17555ab68ebdeafb6705f129b1.tar.gz";
      sha256 = "sha256:1p528ci8309zhyvzli0p7hfkxypjyqi96fqpgm61n32s62c64a23";
    }) {}
, full ? true
}:

with pkgs;

let formosa-keccak =
  fetchFromGitHub {
    owner = "vbgl";
    repo = "formosa-keccak";
    rev = "0d82714f39d5024ff07b117a80c858d6b2070c16";
    hash = "sha256-/j1jQS8kak4QBOxCVQHa1wVFDXdmqww63/zIc1L8qbU=";
  }
; in

let jasmin = jasmin-compiler.overrideAttrs (o: {
  src = fetchurl {
    url = "https://gitlab.com/jasmin-lang/jasmin/-/jobs/9524736591/artifacts/raw/compiler/jasmin-compiler-afe92e0e.tgz";
    hash = "sha256-Jw3FVtE6a/LDczzjvqS5X7tY90COQQRmHzM9sYhg/gw=";
  };
  outputs = [ "bin" "out" ];
  installPhase = ''
    dune install --prefix=$bin --libdir=$out/lib/ocaml/${ocamlPackages.ocaml.version}/site-lib
  '';
}); in

let
  oc = ocaml-ng.ocamlPackages_4_14;
  why = why3.override {
    ocamlPackages = oc;
    ideSupport = false;
    coqPackages = { coq = null; flocq = null; };
  };
  ecVersion = "a8274feb63b62d281db350cd6dd8940c69aca835";
  ec = (easycrypt.overrideAttrs (_: {
    src = fetchFromGitHub {
      owner = "EasyCrypt";
      repo = "easycrypt";
      rev = ecVersion;
      hash = "sha256-Rbs3alnnnDPbKrAqPq1pj/kedHWC+PvPFES4d+V8EAk=";
    };
    postPatch = ''
      substituteInPlace dune-project --replace '(name easycrypt)' '(name easycrypt)(version ${ecVersion})'
    '';
  })).override {
    ocamlPackages = oc;
    why3 = why;
  };
  altergo = callPackage ./config/alt-ergo.nix { ocamlPackages = oc; } ;
in

mkShell ({
  JASMINC = "${jasmin.bin}/bin/jasminc";
  JASMINCT = "${jasmin.bin}/bin/jasmin-ct";
  JASMINPATH="Keccak=${formosa-keccak}/src/amd64";
} // lib.optionalAttrs full {
  packages = [
    ec
    altergo
    cvc4
    z3
  ];

  EC_RDIRS = "Jasmin:${jasmin.lib}/lib/jasmin/easycrypt";
})
