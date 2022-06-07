class MobiusHotlineServer < Formula
  desc "Mobius Hotline server"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "4f56c42e1e8522ebbb690d13f1df08382351189ceaa3f212a81d43cd1d689fb0"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build-darwin-amd64-server"

    bin.install "dist/mobius_server_darwin_amd64/mobius-hotline-server" => "mobius-hotline-server"
    var.install "cmd/mobius-hotline-server/mobius" => "mobius"
  end

  test do
    system "true"
  end
end
