{ pkgs, ... }:

{
  boot.kernelParams = [
    "quiet"
    "splash"
  ];
  boot.consoleLogLevel = 0;
  boot.initrd.verbose = false;
  boot.initrd.kernelModules = [ "i915" ];

  boot.initrd.systemd.enable = true;

  boot.loader.grub = {
    enable = true;
    device = "/dev/sda";
    theme =
      pkgs.fetchFromGitHub {
        owner = "catppuccin";
        repo = "grub";
        rev = "main";
        hash = "sha256-jgM22pvCQvb0bjQQXoiqGMgScR9AgCK3OfDF5Ud+/mk=";
      }
      + "/src/catppuccin-macchiato-grub-theme";
  };

  boot.plymouth = {
    enable = true;
    themePackages = [ pkgs.catppuccin-plymouth ];
    theme = "catppuccin-macchiato";
  };

}
