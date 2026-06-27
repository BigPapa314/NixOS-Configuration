{
  pkgs,
  inputs,
  ...
}: {
  home = {
    # Software
    packages = with pkgs; [
      # Utils
      inputs.any-nix-shell
    ];
  };

  imports = [
    ../../../modules/nix
    ../../modules
  ];

  module = {
    git.enable = true;
    htop.enable = true;
    fastfetch.enable = true;
    nvim.enable = true;
    zsh.enable = true;

    nix-config = {
      enable = true;
      useNixPackageManagerConfig = false;
    };
  };
}
