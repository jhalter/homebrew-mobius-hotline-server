class MobiusHotlineServer < Formula
  desc "Mobius Hotline server"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.0.10.tar.gz"
  sha256 "cb8e2056eb0175307c73f947db028de078ef87324a22b4cc1e912e761642c4c3"
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
