<h1 align=center>NixOS Personal Config ❄️</h1>

<div align=center>

![GitHub last commit](https://img.shields.io/github/last-commit/mirwanasikin/nixos-config?display_timestamp=author&style=for-the-badge&labelColor=black&color=%2394e2d5)
![GitHub repo size](https://img.shields.io/github/repo-size/mirwanasikin/nixos-config?style=for-the-badge&labelColor=black&color=%23cba6f7)

![GitHub License](https://img.shields.io/github/license/mirwanasikin/nixos-config?style=for-the-badge&labelColor=black&color=%23a6e3a1)

</div>

---

> [!IMPORTANT]
> This configuration is tailored for personal use and may not suit for everyone. Use it as a reference, not a universal solution. Inside is less GUI software and mostly just CLI tools. If you prefer using more GUI tools you can change the config file

---

## 🧠 Philosopy

This setup prioritizes:

- **Simplicity** - less is more
- **Reproducibility** - flake based, fully declarative _some of my dotfiles are out of store symlink_
- **keyboard-driven workflow** - because I'm typing with my 10 finger
- **Terminal centric style** - mostly I use CLI tools, but you can change that if you want.
- **Low resource usage** - Optimized for my old laptop

---

## 📦 What's Inside

Here's my packages I used the most and my configuration

| Category          | Choice                                                                  |
| ----------------- | ----------------------------------------------------------------------- |
| `Kernel`          | [CachyOS LTS](https://github.com/xddxdd/nix-cachyos-kernel)             |
| `Window Manager`  | Niri                                                                    |
| `Display Manager` | Sddm                                                                    |
| `Terminal`        | Foot                                                                    |
| `Shell`           | zsh                                                                     |
| `Browser`         | [Helium](https://github.com/oxcl/nix-flake-helium-browser)              |
| `Media`           | [Spotify with Spicetify Patch](https://github.com/Gerg-L/spicetify-nix) |

> [!NOTE]
> Some of the packages are having links to the flake I'm using or you can just see my [Flake.nix](./flake.nix) instead.

> [!TIP]
> Also if you want to see my dotfiles you can check my [zsh config](./home/modules/zsh.nix) [Dotfiles](./home/modules/dotfiles.nix) or [My Symlink](./home/modules/symlink.nix)

---

## 🛠️ Customization

Feel free to:

- Replace CLI tools with GUI alternative.
- Replace Window Manager for Example Hyprland or Desktop Environment like KDE Plasma.
- Add your prefered IDE (since i just using neovim).
- Enable SSH if you want to
