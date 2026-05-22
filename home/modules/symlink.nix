{ config, ... }:

let
  dotfiles = "${config.home.homeDirectory}/nixos-config/dotfiles";
  create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;

  configs = {
    waybar = "waybar";
    dunst = "dunst";
    rofi = "rofi";
    fastfetch = "fastfetch";
    nvim = "nvim";
    sway = "sway";
    swaylock = "swaylock";
    wlogout = "wlogout";
    wallpaper = "wallpaper";
  };

in

{
  xdg.configFile =
    (builtins.mapAttrs (name: subpath: {
      source = create_symlink "${dotfiles}/${subpath}";
      recursive = true;
    }) configs)
    // {
      # starship.toml = file tunggal, beda treatment
      "starship.toml".source = create_symlink "${dotfiles}/starship.toml";
      "mango/config.jsonc".source = create_symlink "${dotfiles}/mango/config.jsonc";
      "mango/style.css".source = create_symlink "${dotfiles}/mango/style.css";
    };
}
