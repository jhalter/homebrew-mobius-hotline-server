class MobiusHotlineServer < Formula
  desc "Mobius Hotline server"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "6714e92877b3df692ef5e8d8b6a5e053b5ad473e42cfb1fe7791a8352dfbcde6"
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
