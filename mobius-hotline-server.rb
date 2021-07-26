class MobiusHotlineServer < Formula
  desc "Mobius Hotline server"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "5a2ff275ecb5391a6f0e6b734792c7459427621fcfb74938bfb95f10e2dd81b2"
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
