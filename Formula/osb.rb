class Osb < Formula
  s = "ff7a5a6da464bec5e092912f150b9cd05ef122f11c92a366d374dc4922876896" # ci:sha256
  v = "0.1.1" # ci:version

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
