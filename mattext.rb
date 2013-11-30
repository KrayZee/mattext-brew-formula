require 'formula'

class Mattext < Formula
  homepage 'https://github.com/dhurum/mattext'
  url 'https://github.com/dhurum/mattext/archive/v0.6.tar.gz'
  #version 'stable'
  depends_on 'cmake' => :build
  depends_on 'argp-standalone'

  def install
    system "cmake", "./", "-DCMAKE_CXX_COMPILER=clang++", *std_cmake_args
    system "make install"
  end

  test do
    system "mattext /usr/local/Library/Formula/mattext.rb"
  end
end
