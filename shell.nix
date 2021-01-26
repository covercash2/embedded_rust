{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  name = "embedded-rust";

  buildInputs = with pkgs; [
#    latest.rustChannels.stable.rust
    pkgconfig
    gcc-arm-embedded # gcc and gdb for arm
    openocd # on device debugger
    picocom # serial communication terminal
    bluez # bluetooth
    utillinux # for rfkill
  ];
}
