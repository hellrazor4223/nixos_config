# X-Server Config Laptop
{
  # Laptop touchpad
  services.xserver.synaptics =
  {
    enable = true;
    accelFactor = "0.5";
    minSpeed = "0.2";
    maxSpeed = "0.6";
    twoFingerScroll = true;
  };

  # i3 settings
  services.xserver.windowManager.i3 =
  {
    configFile = ./i3-config_x220;
  };
}
