{ pkgs ?
    import (fetchTarball {
      url = https://github.com/NixOS/nixpkgs/archive/bfa9810ff7104a17555ab68ebdeafb6705f129b1.tar.gz;
      sha256 = "sha256:1p528ci8309zhyvzli0p7hfkxypjyqi96fqpgm61n32s62c64a23";
    }) {}
, full ? true
, jasmin-compiler ? pkgs.jasmin-compiler.overrideAttrs (o: {
    src = pkgs.fetchurl {
      url = "https://gitlab.com/jasmin-lang/jasmin-compiler/-/archive/4398f0ca07c1c4a5f647f9d0b5ec048de5d95212/jasmin-compiler.tar.bz2";
      hash = "sha256-DwGrFSGxPYrjPdI3pg0eHVr31Kvs1Cg1QCx6+KcxaF4=";
    };
  })
}:

with pkgs;

let crypto-specs =
  fetchFromGitHub {
    owner = "formosa-crypto";
    repo = "crypto-specs";
    rev = "6b508d502f5add8d8617e710062c5534ebe0619c";
    hash = "sha256-ep4Tqwf5LHik57sCjnSpOaMAY0SOcJoc20GzZjaio6s=";
  }
; in

let formosa-keccak =
  fetchFromGitHub {
    owner = "vbgl";
    repo = "formosa-keccak";
    rev = "4a6cc439a0038c96dd09bca565cbd879941ac745";
    hash = "sha256-ik+kVWArtz8f99LWWBhuHmhPMAyYfIqbzq0DWPVCzIk=";
  }
; in

let
  oc = ocaml-ng.ocamlPackages_4_14;
  why = why3.override {
    ocamlPackages = oc;
    ideSupport = false;
    coqPackages = { coq = null; flocq = null; };
  };
  bitwuzla = callPackage ./config/bitwuzla.nix { inherit (oc) buildDunePackage zarith; };
  ecVersion = "7ec289fdd6f0169dcc84f1073f2c6593f5a4cd6e";
  ec = (easycrypt.overrideAttrs (o: {
    src = fetchFromGitHub {
      owner = "EasyCrypt";
      repo = "easycrypt";
      rev = ecVersion;
      hash = "sha256-kmk3CkwIyOUMf4/ztft7DtH4+SiTjNIk9n5cZwHfHxk=";
    };
    postPatch = ''
      substituteInPlace dune-project \
        --replace-warn '(name easycrypt)' '(name easycrypt)(version ${ecVersion})'
    '';
    buildInputs = o.buildInputs ++ (with oc; [
      bitwuzla hex iter progress ppx_deriving_yojson
    ]);
  })).override {
    ocamlPackages = oc;
    why3 = why;
  };
  altergo = callPackage ./config/alt-ergo.nix { ocamlPackages = oc; } ;
in

let mkECvar = lib.strings.concatMapStringsSep ";" ({key, val}: "${key}:${val}"); in

mkShell ({
  JASMINC = "${jasmin-compiler.bin}/bin/jasminc";
  JASMINCT = "${jasmin-compiler.bin}/bin/jasmin-ct";
  JASMIN2EC = "${jasmin-compiler.bin}/bin/jasmin2ec";
  JASMINPATH="Keccak=${formosa-keccak}/src/amd64";
} // lib.optionalAttrs full {
  packages = [
    ec
    altergo
    cvc4
    z3
  ];

  EC_RDIRS = mkECvar [
    { key = "Jasmin"; val = "${jasmin-compiler.lib}/lib/jasmin/easycrypt"; }
    { key = "CryptoSpecs"; val = "${crypto-specs}/fips202"; }
    { key = "CryptoSpecs"; val = "${crypto-specs}/ml-kem"; }
  ];
  EC_IDIRS = mkECvar [
    { key = "Keccak"; val = "${formosa-keccak}/proof/amd64/ref"; }
    { key = "Keccak"; val = "${formosa-keccak}/proof/amd64/avx2"; }
    { key = "JazzEC"; val = "${formosa-keccak}/proof/amd64/extracted"; }
    { key = "JazzEC"; val = "${crypto-specs}/arrays"; }
    { key = "CryptoSpecs"; val = "${crypto-specs}/common"; }
  ];
})
