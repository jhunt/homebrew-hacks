class S3 < Formula
  s = "fb462f655acc620b7845c5cbd5ae3ccf7870dd6c07e9c2efa5b0bf913fdc8679" # ci:sha256
  v = "0.2.5" # ci:version

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
