# X-Server Config Laptop
{
	# Laptop touchpad
	services.xserver.synaptics.enable = true;
	services.xserver.synaptics.accelFactor = "0";
	services.xserver.synaptics.minSpeed = "0.5";
	services.xserver.synaptics.maxSpeed = "0.5";
	# services.xserver.synaptics.dev = ""; # default = null, autodetect

	# Desktop Environment Settings
	services.xserver.desktopManager.xfce.enable = true;
	services.xserver.displayManager.lightdm.enable = true;

	# i3 settings
	services.xserver.windowManager.i3.enable = true;
	services.xserver.windowManager.i3.configFile = ./i3-config_x220;

	# Enable the X11 windowing system.
	services.xserver.enable = true;
	services.xserver.layout = "de";
	services.xserver.xkbOptions = "eurosign:e";
}
