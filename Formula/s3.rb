class S3 < Formula
  s = "23afcb7b0e51b06fcb8ad2ba34d419f0eb076b70ee04e113ffd6ff1e21b75ab1" # ci:sha256
  v = "0.2.1" # ci:version

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
