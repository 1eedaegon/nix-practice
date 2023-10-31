# https://nixos.org/manual/nix/stable/language/advanced-attributes
# https://blog.ielliott.io/nix-docs/derivation.html
derivation {
  name = "simple";
  builder = "${(import <nixpkgs> {}).bash}/bin/bash";
  args = [ "-c" "echo foo > $out" ];
  src = ./.;
  system = builtins.currentSystem;
}
