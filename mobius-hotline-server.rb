class MobiusHotlineServer < Formula
  desc "Mobius Hotline server"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.0.7.tar.gz"
  sha256 "311f1b359cdb8efbdbea177cc1e1be54ced239f09128ade67f57f81d0b60cdee"
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
