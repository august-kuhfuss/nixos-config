{ config, pkgs, ... }:
let
  config = builtins.fromJSON (builtins.readFile ./networking.json);
in
{
  networking.hostName = config.hostName;

  # static ip
  networking.interfaces.eth0.ipv4.addresses = [ {
    address = config.ipv4;
    prefixLength = 24;
  } ];
  networking.defaultGateway = config.gateway;
  networking.nameservers = config.nameservers;

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