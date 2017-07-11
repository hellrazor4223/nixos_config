# network configuration
{
    #extra host definitions fix IP's
    networking.extraHosts = ''
        # BEGIN mysettings
        127.0.0.1       localhost
        127.0.1.1       sokrates-desktop
        # IP anpassen
        192.168.1.129 sokrates-laptop
        
        # Welcome to ROOM 101
        192.168.56.101  nixos-vm
        # END mysettings
    '';
}
