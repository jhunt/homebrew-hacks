class Botherhub < Formula
  s = "f5340d51eba48ab21deadf079281ce71189335dcca61713ded3c4a8e3399dd69" # ci:sha256
  v = "1.0" # ci:version

  desc     "A Github Releases Nag Utility"
  homepage "https://jameshunt.us/code/botherhub"

  url      "https://github.com/jhunt/botherhub/archive/v#{v}.tar.gz"

  version  v
  sha256   s

  def install
    bin.install "botherhub"
  end

  test do
    system "./botherhub", "-h"
  end
end
