{ config, ... }:

let
  dotfiles = "${config.home.homeDirectory}/nixos-config/dotfiles";
  create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;

  configs = {
    bat = "bat";
    yazi = "yazi";
    btop = "btop";
    waybar = "waybar";
    dunst = "dunst";
    rofi = "rofi";
    fastfetch = "fastfetch";
    nvim = "nvim";
    sway = "sway";
    swaylock = "swaylock";
    wlogout = "wlogout";
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
    };
}
