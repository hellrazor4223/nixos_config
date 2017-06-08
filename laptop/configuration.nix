# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, ... }:

{
	imports =
	# Include additional configuraiton files
	[
 		./hardware-configuration.nix
		./grub.nix
		./luks.nix
        ./networks.nix
        ./xserver.nix
        ../dev/packages.nix
		../gui
	];

 	# Number of Jobs of the nixbuilder
 	nix.maxJobs = lib.mkDefault 4;

	# networking settings
	networking.hostName = "sokrates-laptop"; # Define your hostname.

	# The NixOS release to be compatible with for stateful data such as databases.
	system.stateVersion = "17.03";
}
