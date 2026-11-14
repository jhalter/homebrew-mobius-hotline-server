class MobiusHotlineServer < Formula
  desc "Mobius Hotline server"
  homepage "https://github.com/jhalter/mobius"
  url "https://github.com/jhalter/mobius/archive/refs/tags/v0.24.tar.gz"
  sha256 "5e576ab96a3f7e266f37b0e9c721c7d8df21a25eabd51a2f6267081ea3f4dd10"
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
