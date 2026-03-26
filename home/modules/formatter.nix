{ pkgs, ... }:

{
  # Formatter I Need
  home.packages = with pkgs; [
    shfmt
    nil
    nixfmt
    pyright
    ruff
    yaml-language-server
    dockerfile-language-server
    docker-compose-language-service
    terraform-ls
    prettier
  ];
}
