{ pkgs ? import <nixpkgs> {} }: let messages = "hello worlds"; in pkgs.mkShell {
  buildInputs = with pkgs; [cowsay];
  shellHook = '' cowsay ${messages} '';
}
