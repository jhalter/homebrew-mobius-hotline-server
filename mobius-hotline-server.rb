class MobiusHotlineServer < Formula
  desc "Mobius Hotline server"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.18.4.tar.gz"
  sha256 "2b1418e52b6532ae1063dad73309213d19a357d62f601c4c270f6acede677d7a"
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
