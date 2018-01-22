class S3 < Formula
  s = "2cdc46de4a64b201283974b497c247ad2aa4a7c44924ae667ac724ee646884c3" # ci:sha256
  v = "0.2.2" # ci:version

  desc     "A minimalist Amazon S3 client"
  homepage "https://jameshunt.us/code/s3"

  url      "https://github.com/jhunt/s3/releases/download/v#{v}/s3-darwin-amd64"

  version  v
  sha256   s

  def install
    FileUtils.mv("s3-darwin-amd64", "s3")
    bin.install "s3"
  end

  test do
    system "#{bin}/s3", "-v"
  end
end
