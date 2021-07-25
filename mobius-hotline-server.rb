class MobiusHotlineServer < Formula
  desc "Mobius Hotline server"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "81ffefdde0d96394e571cb905a0a45756df3c3f8dca5bb7635db3f28867e9858"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build-server"

    bin.install "mobius-hotline-server"
    var.install "server/mobius"
  end

  test do
    system "true"
  end
end
