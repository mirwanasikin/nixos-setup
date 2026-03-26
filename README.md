# M. Irwan Asikin Personal NixOS Configurations

My personal NixOS configuration. Managed with Nix Flakes and Home Manager as a NixOS module.

## System

| | |
|---|---|
| **Host** | Toshiba Satellite A665 (Sandy Bridge) |
| **CPU** | Intel Core i3 M380 |
| **WM** | Sway (Wayland) |
| **Theme** | Catppuccin Mocha |
| **Shell** | Zsh |
| **Terminal** | Alacritty |
| **Editor** | Neovim (LazyVim) |

## Structure

```
nixos-setup/
├── flake.nix
├── hosts/
│   └── nixos/
│       ├── configuration.nix
│       └── hardware-configuration.nix
├── home/
│   ├── home.nix
│   └── modules/
│       ├── packages.nix
│       ├── zsh.nix
│       ├── tmux.nix
│       ├── gtk.nix
│       └── dotfiles.nix
└── dotfiles/
    ├── sway/
    ├── nvim/
    ├── waybar/
    └── ...
```

## How It Works

- **Flakes** — pinned inputs, reproducible builds
- **NixOS module** — Home Manager integrated into system config, one command to rule them all
- **xdg.configFile** — dotfiles symlinked from repo into `~/.config/`, no Stow needed

## Rebuild

```bash
sudo nixos-rebuild switch --flake ~/nixos-setup#nixos
```

Or use the alias:

```bash
nixupdate
```

