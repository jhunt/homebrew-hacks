class Verse < Formula
  s = "e5484a3cec326c5f4ecc07123ff693ebf732e20179d84d2e691b014ef0f9ae1c" # ci:sha256
  v = "0.14.0" # ci:version

  desc     "A Static Site Generator"
  homepage "https://verse.jameshunt.us"

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
