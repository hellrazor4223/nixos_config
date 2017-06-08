# grub configuration

#parameter
{ config, pkgs, lib, ... }:

#definition
{
	# Use the GRUB 2 boot loader.
	boot.loader.grub.enable = true;
	boot.loader.grub.version = 2;
	# boot.loader.grub.efiSupport = true;
	# boot.loader.grub.efiInstallAsRemovable = true;
	# boot.loader.efi.efiSysMountPoint = "/boot/efi";
	# Define on which hard drive you want to install Grub.
	boot.loader.grub.device = "/dev/sda"; # or "nodev" for efi only
	boot.loader.grub.memtest86.enable = true;
	
	#override default nixos crap
	boot.loader.grub.splashImage = null;
	boot.loader.grub.gfxmodeBios = "1366x768";
	boot.loader.timeout = 10;
	
	#additional config use normal grub configuration format
	boot.loader.grub.extraConfig = 
	''
				
	'';
}
