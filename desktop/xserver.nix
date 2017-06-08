# X-Server Config Desktop
{
	# Desktop Environment Settings
	services.xserver.desktopManager.xfce.enable = true;
	services.xserver.displayManager.lightdm.enable = true;

	# i3 settings
	services.xserver.windowManager.i3.enable = true;
	services.xserver.windowManager.i3.configFile = ./i3-config_desk;

	# Enable the X11 windowing system.
	services.xserver.enable = true;
	services.xserver.layout = "de";
	services.xserver.xkbOptions = "eurosign:e";
}
