{ ... }:

{
  services.openssh.enable = true;

  microvm.forwardPorts = [
    {
      from = "host";
      guest.port = 22;
      host.port = 2222;
    }
  ];
}
