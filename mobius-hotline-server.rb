class MobiusHotlineServer < Formula
  desc "Mobius Hotline server"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "f5a8ecdc3a6edb8f4178861cf8d1c88ffba289fb3c5c06fd22f8af5efc1f7a32"
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
