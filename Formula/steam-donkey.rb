class SteamDonkey < Formula
  desc "Tools and scripts for building and managing infrastructure on AWS."
  homepage "https://github.com/petercoulton/steam-donkey"
  url "https://github.com/petercoulton/steam-donkey/archive/0.0.4.tar.gz"
  version "0.0.4"
  sha256 "d87b9d637304eeccdd45562eb3f52671b74fb899bddf1120c87a9eb73d53924b"

  depends_on :bash => "3"
  depends_on :ruby => "2.3"

  resource 'aws-sdk' do
    url 'https://rubygems.org/gems/aws-sdk-2.6.29.gem'
    sha256 '686ecaf63713d7a123cdfb1d746cc660236b6c8c3ac0b4f12b56479fa0542f06'
  end

  def install
    prefix.install 'bin', 'lib'
    
    resources.each do |r|
      r.verify_download_integrity(r.fetch)
      system("gem", "install", r.cached_download, "--no-document",
             "--install-dir", "#{lib}/steam-donkey/vendor")
    end

    (lib/"_homebrew-init.sh").write(init_script)
  end

  def init_script
    <<-EOS.undent
    #!/bin/bash
    export GEM_HOME="#{HOMEBREW_PREFIX}/lib/steam-donkey/vendor"
    EOS
  end

  test do
    system "#{bin}/donkey", '--version'
  end
end
