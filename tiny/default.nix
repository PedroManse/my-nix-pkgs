{ rustPlatform, fetchFromGitHub, pkgs }:
rustPlatform.buildRustPackage rec {
  pname = "tinyirc";
  version = "0.13.0";

  src = fetchFromGitHub {
    owner = "osa1";
    repo = "tiny";
    rev = "eaed50d";
    sha256 = "/o+zin6/fuzmRV3H8FAfbnLQLFgTJyCGPT4HloMT6/8=";
  };

  #useFetchCargoVendor = true;
  cargoSha256 = "zQeV9WAtX0fSMQ/GkyEnUg/bEI7lRJGp2fT1QL2bYKM=";

  #buildPhase = "
  #  runHook preBuild
  #  cargo build
  #  runHook postBuild
  #";

  #cargoLock = {
  #  lockFile = ./Cargo.lock;
  #};

}
