# GUI Einstellungen für Desktopsysteme einbinden
{
  imports =
  [
    ./vim.nix
    ./packages.nix
    ./networks.nix
    ./xserver.nix
  ];

  # Enables wireless support via networkmanager
  networking.networkmanager.enable = true;

  # Select internationalisation properties.
  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "de";
    defaultLocale = "en_US.UTF-8";
  };

  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  # Standard persönlicher User. Don't forget to set a password with ‘passwd’.
  users.extraUsers.patrick = {
    isNormalUser = true;
    uid = 1000;
  };

  # Standarddienste die man so braucht
  # gpm mouse support
  services.gpm.enable = true;
  services.gpm.protocol = "ps/2";

  # OpenSSH daemon settings:
  services.openssh.enable = true;

  # CUPS printers:
  services.printing.enable = true;
}
