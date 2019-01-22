class S3 < Formula
  s = "55ab8dce0328dde54494d1cf80d379e7cbab3776da51a0f3f047add54e8b2399" # ci:sha256
  v = "0.2.6" # ci:version

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
