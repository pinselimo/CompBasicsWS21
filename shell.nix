{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    nativeBuildInputs = let
      env = pyPkgs : with pyPkgs; [
        numpy
        matplotlib
        ipython
        jupyter
        autopep8
      ];
    in with pkgs; [
      (python39.withPackages env)
    ];
}

