{ ... }:

{
  users.users.root.password = "";
  services.getty.autologinUser = "root";

  nix.settings = {
    extra-experimental-features = [
      "nix-command"
      "flakes"
    ];
    trusted-users = [ "user" ];
  };

  # user
  users.mutableUsers = false;
  users.users.user = {
    password = "d";
    group = "user";
    isNormalUser = true;
    extraGroups = [
      "wheel"
    ];
  };
  users.groups.user = { };

  # sudo
  security.sudo = {
    enable = true;
    wheelNeedsPassword = false;
  };
}
