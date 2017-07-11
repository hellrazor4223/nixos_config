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
    wget
    dhcpcd
    curl
    w3m
    pv
    tinc_pre

    #c c++
    git
    cmake
    gcc
    gnumake
    eclipses.eclipse-cpp

    #php
    #php70
    #mysql57
    #apacheHttpd

    #multimedia
    audacious
    mpv
    vlc
    obs-studio

    #desktop
    firefox sylpheed weechat

    #xfce applications
    xfce.mousepad
    xfce.xfce4-screenshooter
    xfce.xfce4volumed
    xfce.xfce4notifyd
    xfce.xfce4icontheme

    #xfce plugins
    xfce.xfce4_battery_plugin
    xfce.xfce4_weather_plugin
    xfce.thunar-archive-plugin
    xfce.xfce4-sensors-plugin
    xfce.xfce4_netload_plugin
    xfce.xfce4_timer_plugin
  ];
}
