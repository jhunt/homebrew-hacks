class Verse < Formula
  s = "7cd1d94650807176e1cf493af69886f5cc47d481c725485f6613d48afadee00f" # ci:sha256
  v = "0.11.0" # ci:version

  desc     "A Static Site Generator"
  homepage "https://jameshunt.us/code/vex"

  url      "https://github.com/jhunt/verse/releases/download/v#{v}/verse"

  version  v
  sha256   s

  def install
    bin.install "verse"
  end

  test do
    system "./verse", "-v"
  end
end
