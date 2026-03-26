{ pkgs, config, ... }:
{
    gtk = {
        enable = true;
        gtk4.theme = config.gtk.theme;
        theme = {
            name = "Catppuccin-Mocha-Blue-Dark";
            package = pkgs.catppuccin-gtk;
        };
        iconTheme = {
            name = "Tela-dracula";
            package = pkgs.tela-circle-icon-theme;
        };

        cursorTheme = {
            name = "Bibata-Modern-Ice";
            package = pkgs.bibata-cursors;
            size = 24;
        };
    };

}

