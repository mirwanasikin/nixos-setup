{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Editors
    vim

    # Network tools
    wget
    curl
    git
    dig
    iperf
    nmap
    tcpdump

    # Sway Ecosystem
    swaylock
    swaybg
    swayidle
    waybar
    rofi
    wayland-utils
    libnotify
    wlogout

    # Niri
    niri
    noctalia-shell
    xwayland-satellite

    # Container Tools
    podman
    podman-compose
    buildah
    skopeo
    docker
    docker-compose

    # Hardware Tools
    pciutils
    usbutils
    binutils
    smartmontools

    # Debug Forensics
    gcc
    file
    binwalk
    gdb
    strace
    lsof

    # Cert
    mkcert
    nssTools
    inputs.agenix.packages."x86_64-linux".default

    # Theming
    catppuccin-sddm

    # Screenshot
    grim
    slurp

    # Mango
    wlr-randr
  ];
}
