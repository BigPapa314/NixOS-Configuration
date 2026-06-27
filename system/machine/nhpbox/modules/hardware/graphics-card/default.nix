{
  pkgs,
  self,
  ...
}: {
  # Graphics card settings
  nixpkgs.overlays = [
    (import "${self}/system/nixos/overlays/intel-vaapi-driver")
  ];

  hardware.graphics = {
    enable = true;
    enable32Bit = true;

    extraPackages = with pkgs; [
      mesa
      intel-media-driver
      intel-vaapi-driver
      libva-vdpau-driver
      libvdpau-va-gl
    ];
  };
}
