{ pkgs, hyprland, ... }:
{

    imports = [
      ./shell
      ./hyprland
      ./waybar
      ./direnv.nix
      ./kitty.nix
    ];
    home = {
      stateVersion = "24.11";

      packages = with pkgs; [
        vscode
        nomacs
        nh
        zsh
        hyprland-protocols
        kitty
      ];
    };
    programs = {
      zsh.enable = true;
    };
}
