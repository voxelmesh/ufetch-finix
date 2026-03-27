{ stdenv, lib, ... }:

stdenv.mkDerivation {
  pname = "ufetch";
  version = "1.0";

  src = ./.;

  installPhase = ''
    mkdir -p $out/bin
    cp ./ufetch-finix $out/bin/ufetch
    chmod +x $out/bin/ufetch
  '';

  meta = {
    description = "Tiny system info script for Finix";
    license = lib.licenses.gpl2;
    platforms = lib.platforms.unix;
  };
}
