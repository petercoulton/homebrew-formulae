class SteamDonkey < Formula
  desc "Tools and scripts for building and managing infrastructure on AWS."
  homepage "https://github.com/petercoulton/steam-donkey"
  url "https://github.com/petercoulton/steam-donkey/archive/v0.0.1.tar.gz"
  version "0.0.1"
  sha256 "d87b9d637304eeccdd45562eb3f52671b74fb899bddf1120c87a9eb73d53924b"

  def install
    prefix.install 'bin', 'lib'
  end

  test do
    system "#{bin}/donkey", '--version'
  end
end
