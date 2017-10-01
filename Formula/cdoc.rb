class Cdoc < Formula
  s = "b7b8edb95ae0965025fc4b0ffd0062a0006b26dbb281a22d340e0ce2f5b93305" # ci:sha256
  v = "1.1" # ci:version

  desc     "A C source code documentor"
  homepage "https://jameshunt.us/code/cdoc"

  url      "https://github.com/jhunt/cdoc/archive/v#{v}.tar.gz"

  version  v
  sha256   s

  def install
    system "make"
    system "make", "install"
  end

  test do
    system "./cdoc", "-h"
  end
end
