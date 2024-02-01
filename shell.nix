with import <nixpkgs> {};

let
  oc = ocaml-ng.ocamlPackages_4_14;
  why = why3.override {
    ocamlPackages = oc;
    ideSupport = false;
    coqPackages = { coq = null; flocq = null; };
  };
  ec = (easycrypt.overrideDerivation (_: {
    src = fetchFromGitHub {
      owner = "EasyCrypt";
      repo = "easycrypt";
      rev = "f7992e1fe5a443a9dcbce2941f708ea7bc78f6e0";
      hash = "sha256-CdgF2bFzUPNMQoGCOsJaqKp4pDBMqtFZXB0y1Miwm2c=";
    };
  })).override {
    ocamlPackages = oc;
    why3 = why;
  };
in

mkShell {
  packages = [
    ec
    alt-ergo
    cvc4
    z3
  ];

  JASMINC = "${jasmin-compiler.bin}/bin/jasminc";
  EC_RDIRS = "Jasmin:${jasmin-compiler.lib}/lib/jasmin/easycrypt";
}
