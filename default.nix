let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.05";
  pkgs = import nixpkgs { };
in {
  hello = pkgs.callPackage ./hello { };
  tiny = pkgs.callPackage ./tiny { };
}
