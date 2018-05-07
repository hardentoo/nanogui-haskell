let
  pkgs = import ./pkgs.nix { config = pkgconfig; };
  pkgconfig = {
    packageOverrides = pkgs: rec {
      nanogui = pkgs.callPackage ./nanogui.nix {};
    };
  };
in {
  inherit (pkgs) nanogui;
}
