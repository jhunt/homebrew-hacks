class Gow < Formula
  s = "6a7674b0ffcfaa543265f4099f47da2a79d8927b7630d5dbe16a252ac305108d" # ci:sha256
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
