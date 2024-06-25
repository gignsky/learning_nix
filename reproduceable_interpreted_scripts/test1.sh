#!/run/current-system/sw/bin/sh
curl https://github.com/NixOS/nixpkgs/releases.atom | xml2json | jq .
