# package list on system

#parameter
{ pkgs, ... }:

#definition
{
 	# List packages installed in system profile. To search by name, run:
 	# $ nix-env -qaP | grep wget
 	environment.systemPackages = with pkgs;
	[
		#system packages
		wget dhcpcd curl w3m tinc_pre

		#multimedia
		audacious mpv vlc

		#desktop
		firefox sylpheed weechat
	];
}
