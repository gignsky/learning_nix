let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-23.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    cowsay
    lolcat
    git
    vscode
  ];

  GREETING = "Hello, this is a growing repository of my knowledge with nix and nixOS!";

  shellHook = ''
    echo $GREETING | cowsay | lolcat
    git config --global user.email "gignsky@gmail.com"
    git config --global user.name "Gignsky"
    code .
  '';
}
