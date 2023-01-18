class MobiusHotlineServer < Formula
  desc "Mobius Hotline server"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.10.14.tar.gz"
  sha256 "6dea7006aa0fb1adf38f0d5ac6dfde0b58d3b3625098923eb701bf19d88a2623"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build-darwin-amd64-server"

    bin.install "dist/mobius_server_darwin_amd64/mobius-hotline-server" => "mobius-hotline-server"
    var.install "cmd/mobius-hotline-server/mobius" => "mobius" unless Dir.exist? var/"mobius"
  end

  test do
    system "true"
  end
end
