{
  description = "This defines a devalopment enviroment that includes full toolchain support for Markdown to PDF and related tools.";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = { self, nixpkgs, flake-utils }:
	flake-utils.lib.eachDefaultSystem ( system: 
		let 
			pkgs = import nixpkgs {inherit system;};
		in {
			devShells.default = pkgs.mkShell {
				packages = with pkgs; [
					# # Example:
					# python314
					# python314Packages.sympy
					# python314Packages.matplotlib
					# python314Packages.scipy
				];
			};
  });
}
