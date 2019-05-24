class Verse < Formula
  s = "12ebc297cfadec416f2be0c8621e2018c67596c7270e4ba24430105c5a2d351e" # ci:sha256
  v = "0.12.0" # ci:version

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
