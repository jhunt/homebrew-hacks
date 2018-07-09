class Verse < Formula
  s = "0c63640cb0b14eddf58bab19c7cecf141a36ad9d29ca55a0da9de0919342f678" # ci:sha256
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
