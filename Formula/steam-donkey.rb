class SteamDonkey < Formula
  desc "Tools and scripts for building and managing infrastructure on AWS."
  homepage "https://github.com/petercoulton/steam-donkey"
  url "https://github.com/petercoulton/steam-donkey/archive/0.0.2.tar.gz"
  version "0.0.2"
  sha256 "f764ce5f8b8cda5e5e5657c717708947777f380c9d9f69f31b0fd03dc68b4e53"

  def install
    prefix.install 'bin', 'lib'
  end

  test do
    system "#{bin}/donkey", '--version'
  end
end
