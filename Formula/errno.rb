class Errno < Formula
  s = "209591b4f3aa8545f69604db31c81a0dc5319b6fb67ebca5ddd64bdcaa9e5ee0" # ci:sha256
  v = "0.0.1" # ci:version

  desc     "Display system error code names, numbers and descriptions."
  homepage "https://github.com/jhunt/errno"

  head     "https://github.com/jhunt/errno.git"
  url      "https://github.com/teancom/errno/archive/#{v}.tar.gz"

  version  v
  sha256   s

  def install
    system "make"
    bin.install "errno"
  end

  test do
    system "./errno", "14"
  end
end
