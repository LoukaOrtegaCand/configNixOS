{ pkgs, ... }:
{
    home = {
        stateVersion = "24.11";

        packages = with pkgs; [
            vscode
            nomacs
            nh
        ];
    };
}