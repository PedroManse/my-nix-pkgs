{ lib, rustPlatform, fetchFromGitHub }:
rustPlatform.buildRustPackage rec {
  pname = "tinyirc";
  version = "0.13.0";
	owner = "osa1";
	repo = "tiny";

  src = fetchFromGitHub {
		inherit owner repo;
    rev = "v${version}";
    sha256 = "lbG07IlBhvY1vFP0aU6mInbiVC60Y9RRAj15tCPlUVM=";
  };

  cargoPatches = [
    ./downgrade-Cargo.lock-version.patch # Cargo.lock version 4 -> 3
	];

  cargoHash = "sha256-YDDkYBsg/ORFLgvYf6A/xzgFPAaL5PfzCutLop8v+R8=";

	meta = with lib; {
    description = "A terminal IRC client built in rust";
    homepage = "https://github.com/${owner}/${repo}";
    license = with licenses; [ mit ];
    maintainers = with maintainers; [];
  };
}
