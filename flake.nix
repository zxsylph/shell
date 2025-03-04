{
  description = "zxsylp - shell";

  inputs = {
    # include NixOS/nixpkgs github repo on tag "24.05"
    nixpkgs.url = "github:NixOS/nixpkgs?tag=24.05";
  };

  outputs = { self, nixpkgs }:
    let
      supportedSystems = [ "x86_64-linux" "x86_64-darwin" "aarch64-linux" "aarch64-darwin" ];

      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;

      nixpkgsFor = forAllSystems (system: import nixpkgs { inherit system; });
    in {
      devShells = forAllSystems (system:
        let
          pkgs = nixpkgsFor.${system};
        in
        {
          default = pkgs.mkShell {
            shellHook = ''
              ZDOTDIR=$(pwd) zsh
            '';
            packages = [
              # shell
              pkgs.zsh
              pkgs.oh-my-zsh

              # commonss tools
              pkgs.git # Added git
              pkgs.curl # Added common tools
              pkgs.wget # Added common tools
              pkgs.jq # Added common tools
              pkgs.bashInteractive # To improve the shell.
              pkgs.tree # Added common tools
              pkgs.htop # Added common tools
            ];
          };
        }
      );
    };
}


