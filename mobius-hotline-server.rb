class MobiusHotlineServer < Formula
  desc "Mobius Hotline server"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.18.0.tar.gz"
  sha256 "542c1bb342223e5c9106ba0df687e7e432f23e0e3c51f5cf18a70384e0eb3144"
  license "MIT"

  depends_on "go" => :build

  def install    
    system "go", "build", "./cmd/mobius-hotline-server"

    bin.install "mobius-hotline-server" => "mobius-hotline-server"
    var.install "cmd/mobius-hotline-server/mobius" => "mobius" unless Dir.exist? var/"mobius"
  end

  service do
    run [opt_bin/"mobius-hotline-server"]
  end
  
  test do
    system "true"
  end
end
