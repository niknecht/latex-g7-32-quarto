{
  description = "This defines a devalopment enviroment that includes full Pethone and C++ support for each language's Neovim\
  plugins and required shell utilities for testing.";
  # Gtest for C++, something similar for python, load sample test cases there
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
