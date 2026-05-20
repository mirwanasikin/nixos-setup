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

      "gitlab.com" = {
        user = "git";
        identityFile = "~/.ssh/gitlab_key";
      };
    };
  };

  services.ssh-agent.enable = true;
}
