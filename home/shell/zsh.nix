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
    plugins = [
      # Need to be disable currently because its too
      # cpu intensive, so it add 0.4s to zsh load
      #{
      #  name = "zsh-autocomplete";
      #  src = pkgs.fetchFromGitHub {
      #   owner = "marlonrichert";
      #   repo = "zsh-autocomplete";
      #   rev = "eee8bbeb717e44dc6337a799ae60eda02d371b73";
      #   hash = "sha256-2qkB8I3GXeg+mH8l12N6dnKtdnaxTeLf5lUHWxA2rNg=";
      # };
      #}
    ];
    oh-my-zsh = {
      enable = true;
    };
  };
}
