class MobiusHotlineServer < Formula
  desc "Mobius Hotline server"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.0.10.tar.gz"
  sha256 "c33911b12b64dc57ab471bcb5b3af61aad6fdadb0caa61cef39bbcf04fcb34fe"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build-darwin-amd64-server"

    bin.install "dist/mobius-hotline-server" => "mobius-hotline-server"
    var.install "cmd/mobius-hotline-server/mobius" => "mobius"
  end

  test do
    system "true"
  end
end
