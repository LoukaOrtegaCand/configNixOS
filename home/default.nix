{ pkgs, hyprland, ... }:
{
  imports = [
    ./shell
    ./hyprland
    ./waybar
    ./vim
    ./dev
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
      jetbrains.clion
      cmake
      gnumake
      gcc
      zoxide
      neofetch
      docker
      curl
      lua-language-server
      vesktop
      teams-for-linux
      inetutils
      ghc
      stack
      virt-manager
      croc
    ];
  };
  programs = {
    zsh.enable = true;
    neovim.enable = true;
    google-chrome.enable = true;
    zoxide = {
      enable = true;
      enableBashIntegration = true;
      enableZshIntegration = true;
      options = [
        "--cmd cd"
      ];
    };
  };
}
