#dev packages

#parameter
{ pkgs, ... }:

#definition
{
 	# List packages installed in system profile. To search by name, run:
 	# $ nix-env -qaP | grep wget
 	environment.systemPackages = with pkgs;
	[
		#c c++
		git cmake gcc gnumake eclipses.eclipse-cpp

        #php
        php70 mysql57 apacheHttpd

	];
}
