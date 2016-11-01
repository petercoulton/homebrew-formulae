class Laptop < Formula
  desc "Collection of scripts"
  homepage "https://github.com/petercoulton/laptop"
  url "https://github.com/petercoulton/laptop/archive/v0.0.1.tar.gz"
  version "0.0.1"
  sha256 "9be22ee84fcaf6874092bef7fee216ea837e1e49294a774ecb65f09efe40a96f"

  def install
  	prefix.install 'bin', 'lib'
  end

  test do
  	system "#{bin}/dotfiles", '--help'
  end
end
