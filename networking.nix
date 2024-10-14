{ config, pkgs, ... }:

{
  networking.hostName = "nixos-changeme";
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # static ip if necessary
  networking.interfaces.eth0.ipv4.addresses = [ {
    address = "200.0.1.xx";
    prefixLength = 24;
  } ];
  networking.defaultGateway = "200.0.1.126";
  networking.nameservers = [ "200.0.1.80" "200.0.1.82" "1.1.1.1" ];

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Open ports in the firewall.
  networking.firewall.allowedTCPPorts = [ 22 80 443 2377 7946 ];
  networking.firewall.allowedUDPPorts = [ 7946 4789 ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;
}