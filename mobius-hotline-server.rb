class MobiusHotlineServer < Formula
  desc "Mobius Hotline server"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.0.8.tar.gz"
  sha256 "a9948781023db942d94049c3086f6b613756d1681849ae8d57fceee04f68d652"
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
