{ configs, pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    sessionVariables = {
      GITHUB_TOKEN = "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";
      FLAKE = "/home/pomalone/config";
    };
    initExtra = ''
      eval "$(direnv hook zsh)"
    '';
    shellAliases = {
      "lz" = "lazygit";
    };
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    plugins = [];
    oh-my-zsh = {
      enable = true;
    };
  };
}
