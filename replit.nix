{pkgs}: {
  deps = [
    pkgs.xorg.libXrandr
    pkgs.xorg.libXfixes
    pkgs.xorg.libXext
    pkgs.xorg.libXdamage
    pkgs.xorg.libXcomposite
    pkgs.xorg.libX11
    pkgs.fontconfig
    pkgs.cairo
    pkgs.pango
    pkgs.mesa
    pkgs.libdrm
    pkgs.at-spi2-atk
    pkgs.alsa-lib
    pkgs.dbus
    pkgs.nss
    pkgs.glib
    pkgs.gtk3
    pkgs.zip
    pkgs.unzip
    pkgs.apktool
    pkgs.jadx
    pkgs.jdk17
    pkgs.eas-cli
    pkgs.chromium
  ];
}
