{ configs, pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    sessionVariables = {
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
