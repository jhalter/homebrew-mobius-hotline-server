class MobiusHotlineServer < Formula
  desc "Mobius Hotline server"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.10.7.tar.gz"
  sha256 "0414d68f13a1dc3a5ae5e89736cc0ea7fae25165105992e1efc410d567217476"
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
