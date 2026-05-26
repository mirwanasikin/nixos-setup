{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    # CLI essentials
    eza
    fd
    fzf
    ripgrep
    glow
    hyperfine
    delta
    watchexec
    ouch
    unrar
    unzip
    zip

    # System monitoring
    htop
    duf
    ncdu
    dust
    speedtest-cli
    nix-output-monitor
    nvd
    nh

    # Dev tools
    gh
    neovim
    k9s
    terragrunt
    kubernetes-helm
    jq
    mods
    aider-chat
    awscli2
    ssm-session-manager-plugin
    ansible
    terraform
    kdePackages.kdeconnect-kde
    kubectl
    gitlab-ci-local

    # Shell utilities
    tldr
    fastfetch
    figlet
    bluetui

    # Media & Apps
    proton-vpn
    mpv
    imv
    obsidian
    cava
    todoist-electron
    playerctl
    zathura

    # Communications
    thunderbird

  ];

}
