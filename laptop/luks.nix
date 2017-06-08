# Luks configuration file

#parameter
{ ... }:

#definition
{
	# LUKS settings 
	boot.initrd.luks.devices =
	[
		{ name = "laptop"; device = "/dev/sda2"; } 
	];

	boot.initrd.luks.cryptoModules =
	[
		"aes"
		"xts"
		"sha512"
	];
	
	# Hardware configuration
	boot.initrd.availableKernelModules =
	[
		"ehci_pci"
		"ahci"
		"xhci_pci"
		"usb_storage"
		"sd_mod"
		"sdhci_pci"
	];
	
	boot.kernelModules =
	[
		"kvm-intel" 
	];

	boot.extraModulePackages = [ ];

	# Hardrives and Mappers		
	fileSystems."/" =
	{ 
		device = "/dev/mapper/lvm-root";
	    fsType = "ext4";
	};
	
	fileSystems."/boot" =
	{ 
		device = "/dev/sda1";
	    fsType = "ext2";
	};
	
	swapDevices =
	[
		{ device = "/dev/mapper/lvm-swap"; }
	];
}
