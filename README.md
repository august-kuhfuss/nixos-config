# NixOS Configuration

for easy setup. `hardware-config.nix` should be aviable

## Usage

```bash
(cd /etc/nixos && sudo git clone https://github.com/august-kuhfuss/nixos-config) && sudo nixos-rebuild switch
```

first time installation:

```bash
nix-shell -p git && (cd /etc/nixos && sudo git clone https://github.com/august-kuhfuss/nixos-config . --force) && sudo nixos-rebuild switch
```
