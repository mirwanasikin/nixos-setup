{ inputs, ... }:

{
  imports = [
    # inputs.mangowm.hmModules.mango
    inputs.spicetify-nix.homeManagerModules.default
    ./modules/foot.nix
    ./modules/spicetify.nix
    ./modules/packages.nix
    ./modules/dotfiles.nix
    ./modules/gtk.nix
    ./modules/tmux.nix
    ./modules/zsh.nix
    ./modules/mimeapps.nix
    ./modules/formatter.nix
    ./modules/git.nix
    ./modules/ssh.nix
    ./modules/services.nix
    ./modules/helium.nix
    ./modules/wf-recorder.nix
    ./modules/symlink.nix
    # ./modules/mango.nix
  ];

  home.username = "irwan";
  home.homeDirectory = "/home/irwan";
  home.stateVersion = "25.11";

  programs.home-manager.enable = true;
}
