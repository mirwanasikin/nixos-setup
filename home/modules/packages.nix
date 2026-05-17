{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    # CLI essentials
    eza
    fd
    fzf
    ripgrep
    yazi
    bat
    glow
    hyperfine
    delta
    watchexec
    ouch
    unrar

    # System monitoring
    btop
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
    lazygit
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

    # Shell utilities
    tldr
    fastfetch
    figlet
    atuin
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

    # testing
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];

}
