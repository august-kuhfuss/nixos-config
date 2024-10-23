{ config, pkgs, ... }:

{
  users.users = {

    ansible = {
      isNormalUser = true;
      description = "ansible@kuhfuss.local";
      extraGroups = [ "networkmanager" "wheel" "docker" ];
      hashedPassword = "$y$j9T$FPIM2v94WhYJQa8tPtfsP0$n0FpCtZSoYnu6IH610rf6/1.AKE8DcCkR0dNVv03Te.";
      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFCriVrxmwrYX2r6gbGfiQC8P8uTueLpmtL8MM9nA+3l ansible@kuhfuss.local"
      ];
      packages = with pkgs; [];
    };

    sven_giesecke = {
      isNormalUser = true;
      description = "sven.giesecke@kuhfussonline.com";
      extraGroups = [ "networkmanager" "wheel" "docker" ];
      hashedPassword = "$y$j9T$Bc68zBE2U4zzaCnLCtDrh0$KLB.yjKH6XpruInTBqbH8CqzzRH3jbxf92594q7xj2B";
      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHVA1+xsucJUXKpbe+aLoNNhUV1XRK5dykfEGfuDZcHg sven.giesecke@kuhfussonline.com"
      ];
      packages = with pkgs; [];
    };

    borislaw_sotnikow = {
      isNormalUser = true;
      description = "borislaw.sotnikow@kuhfussonline.com";
      extraGroups = [ "networkmanager" "wheel" "docker" ];
      hashedPassword = "$y$j9T$fvXfg/T3y/q1IS3vJrHg40$vFHOnWuK/wKexsnOEu9gxPD6wxIZdZfTVB3moWbq6D2";
      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGWejPaZihz64Fk2/NUbmA6MbNLQz+AGDgy2UXLfe0ci borislaw.sotnikow@kuhfussonline.com"
      ];
      packages = with pkgs; [];
    };

    hennes_tarrach-fucke = {
      isNormalUser = true;
      description = "hennes.tarrach-fucke@kuhfussonline.com";
      extraGroups = [ "networkmanager" "wheel" "docker" ];
      hashedPassword = "$y$j9T$IcvNmO4U7VgIivoN66BOL.$B5ZKLrv3kYbCXfMCGBgbLWEZ2sFQ5XwFBmWYy2T16j0";
      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPwy3kXvkpyFpkSr+0W73LYBjXdXkn0E4WTCBbH60Jyu hennes.tarrach-fucke@kuhfussonline.com"
      ];
      packages = with pkgs; [];
    };

  };
}