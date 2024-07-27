class MobiusHotlineServer < Formula
  desc "Mobius Hotline server"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.16.1.tar.gz"
  sha256 "9ed29dbcc98bf98687ff0ff2979e5809e29c9229ce3121f3d27dd889ac1546b4"
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
