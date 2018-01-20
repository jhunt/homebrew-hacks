class S3 < Formula
  s = "bb47ebdcfb2d986ea272ba8c6dad27ffe337411801aa403cdf1acdb350727197" # ci:sha256
  v = "0.1.0" # ci:version

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
