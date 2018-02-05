class Gow < Formula
  s = "232b89b55502135e48d159143ba79ea74a744dd1ac2c3132339ec358bd16d0a0" # ci:sha256
  v = "1.0.0" # ci:version

  desc     "A static-file HTTP server"
  homepage "https://jameshunt.us/code/gow"

  url      "https://github.com/jhunt/gow/releases/download/v#{v}/gow-darwin-amd64"

  version  v
  sha256   s

  def install
    FileUtils.mv("gow-darwin-amd64", "gow")
    bin.install "gow"
  end

  test do
    system "#{bin}/gow", "-h"
  end
end
