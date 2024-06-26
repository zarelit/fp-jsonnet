{ pkgs, lib, config, inputs, ... }:

{
  packages = [ pkgs.jsonnet-bundler pkgs.jsonnet-language-server ];

  languages.jsonnet.enable = true;

  enterTest = ''
    jsonnet tests/all.jsonnet
  '';

  env.JSONNET_PATH = "lib";
  scripts.fmt.exec = "${lib.getExe pkgs.tanka} fmt .";
}
