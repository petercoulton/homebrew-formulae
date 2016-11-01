class Laptop < Formula
  desc "Collection of scripts"
  homepage "https://github.com/petercoulton/laptop"
  url "https://github.com/petercoulton/laptop/archive/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "8602ade98e62e3b183f5625b3b44a3aa936c5d4f235d4331188dcf0c89a00602"

  def install
  	prefix.install 'bin', 'lib'
  end

  test do
  	system "#{bin}/dotfiles", '--help'
  end
end
