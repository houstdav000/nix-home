# csharp.nix
#
# Programming environment for C#

{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    mono
    dotnet-netcore
    dotnet-sdk

    # Dotnet packages
    dotnetCorePackages.sdk_3_0
    dotnetCorePackages.netcore_3_1
  ];
}
