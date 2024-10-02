{ pkgs, ...}: {

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # to access nixos via .local
  networking.hostName = "nixos"; # Define your hostname.
  networking.firewall.enable = false;

  services.resolved.enable = true;
  networking = {
    useDHCP = false;
    useNetworkd = true;
  };
  # run `ip link show`
  systemd.network = {
    networks = {
      "enp1s0" = {
        name = "enp1s0";
        DHCP = "ipv4";
        networkConfig = {
          MulticastDNS = true;
        };
      };
    };
  };
}
