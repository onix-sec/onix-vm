{ ... }:

{
  microvm = {
    mem = 4096;
    vcpu = 2;

    volumes = [
      {
        mountPoint = "/";
        image = "onix.qcow2";
        size = 256;
      }
    ];

    shares = [
      {
        # use proto = "virtiofs" for MicroVMs that are started by systemd
        proto = "9p";
        tag = "ro-store";
        # a host's /nix/store will be picked up so that no
        # squashfs/erofs will be built for it.
        source = "/nix/store";
        mountPoint = "/nix/.ro-store";
      }
    ];

    # "qemu" has 9p built-in!
    hypervisor = "qemu";
    socket = "control.socket";

    interfaces = [
      {
        type = "user";
        id = "usernet";
        mac = "00:00:00:00:00:02";
      }
    ];
  };
}
