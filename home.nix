{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "yb";
  home.homeDirectory = "/home/yb";
  home.stateVersion = "25.05"; # Please read the comment before changing.
  home.packages = [
  ];

  home.file = {
    # 管理一个简单的文本文件 ~/test-managed
    "test-managed".text =
    if config.home.username == "yb" then
      ''
        Hello, yb!
        This is your personal config.
      ''
    else
      ''
        Hello, stranger!
        Default config here.
      '';
  };

  home.sessionVariables = {
  };

  # programs.home-manager.enable = true;
}
