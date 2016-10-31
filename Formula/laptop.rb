# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Laptop < Formula
  desc ""
  homepage ""
  head "https://github.com/petercoulton/laptop.git", :branch => "master"

  def install
  	prefix.install 'bin', 'lib'
  end

  test do
  	system "#{bin}/dotfiles", '--help'
  end
end
