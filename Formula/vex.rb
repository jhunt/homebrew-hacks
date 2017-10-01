class Vex < Formula
  s = "68f2dad8f32a3e66e39ee518e264b7fc04b407b8cc32e572eb48ec3a4be9e051" # ci:sha256
  v = "1.0" # ci:version

  desc     "A vim-like Hex Editor"
  homepage "https://jameshunt.us/code/vex"

  url      "https://github.com/jhunt/vex/archive/v#{v}.tar.gz"

  version  v
  sha256   s

  def install
    system "make"
    bin.install "vex"
  end

  test do
    system "./vex", "-v"
  end
end
