{
  description = "karpathy-course";
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [
          ];
        };
        cursor-as-code = pkgs.writeShellScriptBin "code" ''
          $(which cursor) $@
        '';
      in
      with pkgs;
      {
        devShell = mkShell {
          nativeBuildInputs = [
            python3Full
            jupyter
            graphviz
            brev-cli
            cursor-as-code
          ];
        };
      }
    );
}
