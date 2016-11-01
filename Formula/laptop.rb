class Laptop < Formula
  desc "Collection of scripts"
  homepage "https://github.com/petercoulton/laptop"
  url "https://github.com/petercoulton/laptop/archive/v0.0.1.tar.gz"
  version "0.0.1"
  sha256 "d87b9d637304eeccdd45562eb3f52671b74fb899bddf1120c87a9eb73d53924b"

  def install
  	prefix.install 'bin', 'lib'
  end

  test do
  	system "#{bin}/dotfiles", '--help'
  end
end
