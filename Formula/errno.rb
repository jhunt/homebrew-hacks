class Errno < Formula
  s = "efea5d0de3ba9897b2f5ec9bc8ac9804aab1bebeb2ded06d39f63360b9183716" # ci:sha256
  v = "1.0" # ci:version

  desc     "Display system error code names, numbers and descriptions."
  homepage "https://jameshunt.us/code/errno"

  url      "https://github.com/jhunt/errno/archive/v#{v}.tar.gz"

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
