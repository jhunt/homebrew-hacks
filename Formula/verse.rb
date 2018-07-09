class Verse < Formula
  s = "cad0df12692905395116865d986f2a179f91d905cb986f6f6f15337d46cbf8dc" # ci:sha256
  v = "0.10.0" # ci:version

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
