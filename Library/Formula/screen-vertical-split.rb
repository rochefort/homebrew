require 'formula'

class ScreenVerticalSplit < Formula
  url 'http://ftp.gnu.org/gnu/screen/screen-4.0.3.tar.gz'
  homepage 'http://www.gnu.org/software/screen/'
  md5 '8506fd205028a96c741e4037de6e3c42'

  def patches
    # enable vertical split patch
    [
      "http://vsp4sdl.yuggoth.org/wrp_vertical_split_0.3_4.0.2.diff.bz2",
      "https://raw.github.com/gist/1143577/d351772f91704303d14aa6e654b8fdff90d3d225/pty.c.20110813.diff"
    ]
  end

  def install
    system "./configure", "--enable-colors256",
                          "--prefix=#{prefix}",
                          "--mandir=#{man}",
                          "--infodir=#{info}"
    system "make"
    system "make install"
  end
end
