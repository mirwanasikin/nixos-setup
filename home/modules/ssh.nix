{ ... }:

{
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

      "codeberg.org" = {
        user = "git";
        identityFile = "~/.ssh/codeberg_git";
      };
    };
  };

  services.ssh-agent.enable = true;
}
