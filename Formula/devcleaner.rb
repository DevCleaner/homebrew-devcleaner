
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class DevCleaner < Formula
  desc "A tool to search for node_modules an clean the projects selected"
  homepage "https://github.com/DevCleaner/devcleaner"
  if OS.mac?
    url "https://github.com/DevCleaner/devcleaner/releases/download/v0.1.1/devcleaner-macos.tar.gz"
    sha256 "c3982bbb84ba97334b2a52a943b11dfbeabe578c6af0d0a616db8416cc6f6bf0"
  else
    url "https://github.com/DevCleaner/devcleaner/releases/download/v0.1.1/devcleaner-linux-musl.tar.gz"
    sha256 "1fd8bd0ccaf73937dbd9c752387bdd04100a724e839e2e2a63d6dcc64acfd6bb"
  end
  version "v0.1.1"
  license "MIT"

  def install
    bin.install "devcleaner"
    ohai "You're done!  Run with \"devcleaner\""
    ohai "For runtime flags, see \"devcleaner --help\""
  end
end