class Osb < Formula
  s = "f51a66277b1ea2f09887fdf1ae8d189de3d7d16ec8631d6a3857a1c6e3eb758d" # ci:sha256
  v = "0.1.2" # ci:version

  desc     "A CLI for interacting with OSBAPI-compliant Service Brokers"
  homepage "https://jameshunt.us/code/osb"

  url      "https://github.com/jhunt/osb/releases/download/v#{v}/osb-darwin-amd64"

  version  v
  sha256   s

  def install
    FileUtils.mv("osb-darwin-amd64", "osb")
    bin.install "osb"
  end

  test do
    system "#{bin}/osb", "-h"
  end
end
