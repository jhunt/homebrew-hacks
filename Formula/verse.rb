class Verse < Formula
  s = "d6d62d5db9653841cc0fc2bcb303adb2d06166e974d432d40b3812d801a1f5cb" # ci:sha256
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
