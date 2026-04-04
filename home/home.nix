{ inputs, pkgs, ... }:

{
  home.username = "irwan";
  home.homeDirectory = "/home/irwan";
  home.stateVersion = "25.11";

  programs.home-manager.enable = true;
  programs.git = {
    enable = true;
    signing = {
      key = "3B1B778D1D8F51B1";
      signByDefault = true;
    };
    settings = {
      user.name = "M. Irwan Asikin";
      user.email = "225542013+mirwanasikin@users.noreply.github.com";
      init.defaultBranch = "main";
      pull.rebase = false;
    };
  };

  programs.gpg = {
    enable = true;
  };

  services.gpg-agent = {
    enable = true;
    pinentry.package = pkgs.pinentry-curses;
    defaultCacheTtl = 28800;
    maxCacheTtl = 86400;
  };

  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;

    matchBlocks = {
      "*" = {
        addKeysToAgent = "yes";
      };

      "github.com" = {
        user = "git";
        identityFile = "~/.ssh/key_github_irwan";
      };
    };
  };

  services.ssh-agent.enable = true;

  services.udiskie = {
    enable = true;
    automount = true;
    tray = "never";
  };

  imports = [
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
  ];
}
