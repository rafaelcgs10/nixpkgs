{ lib, mkCoqDerivation, coq, version ? null }:

mkCoqDerivation {
  pname = "coinduction";
  owner = "damien-pous";
  inherit version;
  defaultVersion = let inherit (lib.versions) range; in
    lib.switch coq.coq-version [
      { case = range "8.20" "8.20"; out = "1.20"; }
      { case = range "8.19" "8.19"; out = "1.9"; }
      { case = range "8.18" "8.18"; out = "1.8"; }
      { case = range "8.17" "8.17"; out = "1.7"; }
      { case = range "8.16" "8.16"; out = "1.6"; }
      { case = range "8.15" "8.15"; out = "1.5"; }
    ] null;
  release."1.20".sha256  = "sha256-cV7arIP85mc4ESRqB5PgQW27u5iXG8OcJXCDEUzQz58=";
  release."1.9".sha256  = "sha256-bBU+xDklnzJBeN41GarW5KXzD8eKsOYtb//ULYumwWE=";
  release."1.8".sha256  = "sha256-IoUZVu9Wwnxy4l12G76am4mz0dytL3jlyNEHQEbGhAY=";
  release."1.7".sha256  = "sha256-npb83YFmL6k4jKkAMSiDiKFguRqWxLqAo/vpg7bp/s0=";
  release."1.6".sha256  = "sha256-ya6c5adxhePhYEwyM/MQXk7kLjuo4HVYyBMrUh8Iz1w=";
  release."1.5".sha256  = "sha256-TFcK9rzOelJ4uvPdCWnB4Hf3EygG/vJ0wmSGp1FODQw=";

  releaseRev = v: "v${v}";

  mlPlugin = true;

  meta = {
    description = "A library for doing proofs by (enhanced) coinduction";
    license = lib.licenses.lgpl3Plus;
  };
}
