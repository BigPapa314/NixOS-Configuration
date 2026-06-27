_: {
  systemd.network = {
    enable = true;

    networks.wlo1 = {
      matchConfig.Name = "wlo1";
      #address = ["192.168.1.111/24"];
    };
  };

  networking = {
    firewall = {
      enable = true;

      #allowedTCPPorts = [
      #  8384
      #  22000
      #];

      #allowedUDPPorts = [
      #  22000
      #  21027
      #];

      #allowedTCPPortRanges = [
      #  {
      #    from = 1714;
      #    to = 1764;
      #  } # KDE Connect
      #];

      #allowedUDPPortRanges = [
      #  {
      #    from = 1714;
      #    to = 1764;
      #  } # KDE Connect
      #];
    };
  };
}
