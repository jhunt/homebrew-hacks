class Tt < Formula
  s = "679d7387bddd88dd1613186b25f0f1f47bb11be3a7977aad2a9bb81966cb9a52" # ci:sha256
  v = "1.0" # ci:version

  desc     "A no-nonsense time tracker"
  homepage "https://jameshunt.us/code/tt"

  url      "https://github.com/jhunt/tt/archive/v#{v}.tar.gz"

  version  v
  sha256   s

  def install
    bin.install "tt"
  end

  test do
    system "./tt", "-h"
  end
end
