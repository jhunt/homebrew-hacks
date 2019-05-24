class Whereslloyd < Formula
  s = "8e11139685dc01a9831c1e443dccc8ea8610252582e4dae08b97e62b893a0d8d" # ci:sha256
  v = "1.1.0" # ci:version

  desc     "BURRITOS!"
  homepage "https://github.com/thomasmitchell/whereslloyd"

  url      "https://github.com/thomasmitchell/whereslloyd/releases/download/#{v}/whereslloyd-darwin"

  version  v
  sha256   s

  def install
    FileUtils.mv("whereslloyd-darwin", "whereslloyd")
    bin.install "whereslloyd"
  end
end
