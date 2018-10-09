class Osb < Formula
  s = "043c0f41681af6b11b81626cb56af3ff89e37bb910a3ec8d8357ead695d9c2c2" # ci:sha256
  v = "0.1.0" # ci:version

  desc     "An A CLI for interacting with OSBAPI-compliant Service Brokers"
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
