class Osb < Formula
  s = "691054a8f2b0b082964f99b3c4ed7477da73e5e2bfd7911f349ac22c07753718" # ci:sha256
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
