
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Devcleaner < Formula
  desc "A tool to search for node_modules an clean the projects selected"
  homepage "https://github.com/DevCleaner/devcleaner"
  if OS.mac?
    url "https://github.com/DevCleaner/devcleaner/releases/download/v0.1.2/devcleaner-macos.tar.gz"
    sha256 "621aa78c2345da23e4a380920a7c2d5f3df95af9c5667227a348c57860a81c67"
  else
    url "https://github.com/DevCleaner/devcleaner/releases/download/v0.1.2/devcleaner-linux-musl.tar.gz"
    sha256 "8d5bfbf73499458eedf74c5fcde492861e224180a6134279f1743efeb7bbcd2a"
  end
  version "v0.1.2"
  license "MIT"

  def install
    bin.install "devcleaner"
    ohai "You're done!  Run with \"devcleaner\""
    ohai "For runtime flags, see \"devcleaner --help\""
  end
end