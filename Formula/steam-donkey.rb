class SteamDonkey < Formula
  desc "Tools and scripts for building and managing infrastructure on AWS."
  homepage "https://github.com/petercoulton/steam-donkey"
  url "https://github.com/petercoulton/steam-donkey/archive/0.0.3.tar.gz"
  version "0.0.3"
  sha256 "118ee134a87bda0e34b8532cfc4d1072b9dc086e37ad8c2a50a543a1e1d82b7e"

  def install
    prefix.install 'bin', 'lib'
  end

  test do
    system "#{bin}/donkey", '--version'
  end
end
