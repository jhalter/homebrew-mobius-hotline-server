class MobiusHotlineServer < Formula
  desc "Mobius Hotline server"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.21.2.tar.gz"
  sha256 "372e4cdd6fe7f99ca46e1528e766f388c04c0285837138cd7aa73e4b6cf3d51b"
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
