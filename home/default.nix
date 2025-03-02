{ pkgs, hyprland, ... }:
{
  imports = [
    ./shell
    ./hyprland
    ./waybar
    ./direnv.nix
    ./kitty.nix
    ./nvim
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
    ];
  };
  programs = {
    zsh.enable = true;
    kitty = {
      enable = true;
      shellIntegration.enableZshIntegration = true;
      settings = {
        # Window settings
        hide_window_decorations = "no";
        background_opacity = "0.70";
        dynamic_background_opacity = "yes";
        window_padding_width = "0.0";
        remember_window_size = "no";

        # Tabs
        tab_bar_min_tabs = "2";
        tab_bar_edge = "bottom";
        tab_bar_style = "powerline";
        tab_powerline_style = "slanted";
        tab_title_template = "{title}{' :{}:'.format(num_windows) if num_windows > 1 else ''}";
      };
      themeFile = "Catppuccin-Mocha";
    };
    neovim.enable = true;
    google-chrome.enable = true;
  };
}
