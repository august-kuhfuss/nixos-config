{ config, pkgs, ... }:
let
  config = builtins.fromJSON (builtins.readFile ./networking.json);
  useStaticIP = config.ipv4 != "";
in
{
  networking.hostName = config.hostName;

  # static ip if necessary
  networking.interfaces.eth0 = if useStaticIP then {
    ipv4.addresses = [ {
      address = config.ipv4;
      prefixLength = 24;
    } ];
    ipv4.gateway = config.gateway;
    nameservers = config.nameservers;
  } else {
    useDHCP = true;
  };

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  networking.networkmanager.enable = true;

  # Open ports in the firewall.
  networking.firewall.allowedTCPPorts = [ 22 80 443 2377 7946 ];
  networking.firewall.allowedUDPPorts = [ 7946 4789 ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;
}