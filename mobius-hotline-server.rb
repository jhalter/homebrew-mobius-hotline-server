class MobiusHotlineServer < Formula
  desc "Mobius Hotline server"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "2ca2f70017f7aa6141459f70a6d9468c1b2997862ed66c8335dd899d2333db8c"
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
