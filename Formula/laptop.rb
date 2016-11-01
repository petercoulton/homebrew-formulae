class Laptop < Formula
  desc "Collection of scripts"
  homepage "https://github.com/petercoulton/laptop"
  url "https://github.com/petercoulton/laptop/archive/0.0.2.tar.gz"
  version "0.0.2"
  sha256 "60715df9999e66c75c436e704e275f4d10c7c804336cdae65980ea149a9af708"

  def install
    prefix.install 'bin', 'lib'
  end

  test do
    system "#{bin}/dotfiles", '--help'
  end
end
