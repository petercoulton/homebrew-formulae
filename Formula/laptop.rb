class Laptop < Formula
  desc "Collection of scripts"
  homepage "https://github.com/petercoulton/laptop"
  url "https://github.com/petercoulton/laptop/archive/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "5d1930a9033a4d6a178cbfc9187820df44337437bc950e9347a505730eb6349c"

  def install
  	prefix.install 'bin', 'lib'
  end

  test do
  	system "#{bin}/dotfiles", '--help'
  end
end
