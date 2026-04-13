{ ... }:

{
  services.udiskie = {
    enable = true;
    automount = true;
    tray = "never";
  };

  services.syncthing = {
    enable = true;
  };
}
