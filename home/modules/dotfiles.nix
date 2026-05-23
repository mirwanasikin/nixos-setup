{ ... }:

{
  # Yazi
  programs.yazi = {
    enable = true;
    shellWrapperName = "y";
  };

  catppuccin.yazi = {
    enable = true;
    flavor = "mocha";
  };

  # Bat
  programs.bat.enable = true;

  catppuccin.bat = {
    enable = true;
    flavor = "mocha";
  };

  # Lazygit
  programs.lazygit.enable = true;

  catppuccin.lazygit = {
    enable = true;
    accent = "mauve";
    flavor = "mocha";
  };

  # Eza
  programs.eza.enable = true;

  catppuccin.eza = {
    enable = true;
    flavor = "mocha";
    accent = "mauve";
  };

  # Btop
  programs.btop = {
    enable = true;
    extraConfig = ''
      theme_background = false
      vim_keys = true
      show_uptime = true
    '';
  };

  catppuccin.btop = {
    enable = true;
    flavor = "mocha";
  };

  # Dunst
  services.dunst.enable = true;

  catppuccin.dunst = {
    enable = true;
    flavor = "mocha";
  };

}
