{ rustPlatform, fetchFromGitHub }:
rustPlatform.buildRustPackage rec {
  pname = "tinyirc";
  version = "0.13.0";

  src = fetchFromGitHub {
    owner = "osa1";
    repo = "v0.13.0";
    rev = "73f2401";
    sha256 = "lbG07IlBhvY1vFP0aU6mInbiVC60Y9RRAj15tCPlUVM=";
  };

  cargoPatches = [
    ./downgrade-Cargo.lock-version.patch # Cargo.lock version 4 -> 3
	];

  cargoHash = "sha256-YDDkYBsg/ORFLgvYf6A/xzgFPAaL5PfzCutLop8v+R8=";
}
