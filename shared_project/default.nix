let
  pkgs = import <nixpkgs> {};
  build = pkgs.python3Packages.callPackage ./package.nix {}; 
in
  { 
    inherit build;
    shell = pkgs.mkShell {
      inputsForm = [ build ];
      packages = with pkgs.python3Packages; [ black flake8 ];
    };
  }
