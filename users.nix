{ config, pkgs, ... }:

{
  users.users.ansible = {
    isNormalUser = true;
    description = "ansible@kuhfuss.local";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFCriVrxmwrYX2r6gbGfiQC8P8uTueLpmtL8MM9nA+3l ansible@kuhfuss.local"
    ];
    packages = with pkgs; [];
  };

  users.users.borislaw_sotnikow = {
    isNormalUser = true;
    description = "borislaw.sotnikow@kuhfussonline.com";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGWejPaZihz64Fk2/NUbmA6MbNLQz+AGDgy2UXLfe0ci borislaw.sotnikow@kuhfussonline.com"
    ];
    packages = with pkgs; [];
  };

  users.users.sven_giesecke = {
    isNormalUser = true;
    description = "sven.giesecke@kuhfussonline.com";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHVA1+xsucJUXKpbe+aLoNNhUV1XRK5dykfEGfuDZcHg sven.giesecke@kuhfussonline.com"
    ];
    packages = with pkgs; [];
  };

}