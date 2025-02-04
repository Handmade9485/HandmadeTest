{ pkgs ? import <nixpkgs> {}, }:

pkgs.mkShell {
  LOCALE_ARCHIVE = "${pkgs.glibcLocales}/lib/locale/locale-archive";
  env.LANG = "C.UTF-8";
  env.LC_ALL = "C.UTF-8";

  packages = with pkgs; [
    gcc
    cmake
    zlib
    zstd
    libjpeg
    libpng
    libGL
    SDL2
    openal
    curl
    libvorbis
    libogg
    gettext
    freetype
    sqlite
    irrlicht
  ];
}
