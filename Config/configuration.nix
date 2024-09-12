
{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos";

 programs.hyprland = {
    enable = true;
    xwayland.enable = true;

     };

services.xserver.displayManager.sddm.enable = true;

  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Colombo";

  i18n.defaultLocale = "en_US.UTF-8";

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  users.users.macaoi = {
    isNormalUser = true;
    description = "macaoi";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  nixpkgs.config.allowUnfree = true;

  # $ nix search wget
  environment.systemPackages = with pkgs; [

  xfce.thunar
  neovim
  git
  firefox
  alacritty
  fastfetch
  waybar
  hyprpaper
  zed-editor
  cava
  yazi
  tty-clock
  spicetify-cli
  
   ];

  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  system.stateVersion = "24.05";

}

