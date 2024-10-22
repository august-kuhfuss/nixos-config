# NixOS Configuration

for easy setup. `hardware-config.nix` should be aviable

## Usage

first time installation (best as `root` or equivalent):

```bash
script="cd /etc/nixos &&
git config --global --add safe.directory /etc/nixos &&
git init -b main &&
git remote add origin https://github.com/august-kuhfuss/nixos-config &&
mv configuration.nix configuration.nix.bak &&
git pull --set-upstream origin main &&
echo \"{\"hostName\": \"changeme\"}\" > networking.json &&
nano networking.json &&
nixos-rebuild switch" && nix-shell -p git --run "$script"
```

updating:

```bash
(cd /etc/nixos && sudo git pull) && sudo nixos-rebuild switch
```
