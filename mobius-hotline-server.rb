class MobiusHotlineServer < Formula
  desc "Mobius Hotline server"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "ef31e21f5bfc55d32e190a434413da630fb7392d87104ccbcd58adc5953bacc7"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build-server"
    system "make", "init-config"

    bin.install "mobius-hotline-server"
  end

  test do
    system "true"
  end
end
