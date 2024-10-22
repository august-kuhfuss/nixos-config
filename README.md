# NixOS Configuration

for easy setup. `hardware-config.nix` should be aviable

## first time installation

```bash
sudo nix-shell -p git --run "cd /etc/nixos &&
git config --global --add safe.directory /etc/nixos &&
git init -b main &&
git remote add origin https://github.com/august-kuhfuss/nixos-config &&
mv configuration.nix configuration.nix.bak &&
git pull --set-upstream origin main &&
nano networking.json &&
nixos-rebuild switch"
```

example `networking.json`

```json
{
	"hostName": "changeme",
	"ipv4": "192.168.1.20",
	"gateway": "192.168.1.1",
	"nameservers": ["192.168.1.2", "192.168.1.3"]
}
```

## keeping up to date

```bash
(cd /etc/nixos && sudo git pull) && sudo nixos-rebuild switch
```
