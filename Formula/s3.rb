class S3 < Formula
  s = "d0732b05d9fd799a37737543fd07cd0b4bc8050e2e242c05ba5a722c13a591f6" # ci:sha256
  v = "0.2.7" # ci:version

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
