{ configs, pkgs, ... }:
{
  programs.bash = {
    enable = true;
    initExtra = ''
      exec zsh
    '';
  };
}
