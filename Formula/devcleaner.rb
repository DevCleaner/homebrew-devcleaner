
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class DevCleaner < Formula
  desc "A tool to search for node_modules an clean the projects selected"
  homepage "https://github.com/DevCleaner/devcleaner"
  if OS.mac?
    url "https://github.com/DevCleaner/devcleaner/releases/download/v0.1.0/devcleaner-macos.tar.gz"
    sha256 "9512c9ab83256cb01183057c0ba0357b7144467b859562d30b4f0bbd655011bd"
  else
    url "https://github.com/DevCleaner/devcleaner/releases/download/v0.1.0/devcleaner-linux-musl.tar.gz"
    sha256 "e4ee5b01e6e408b51bea61eff697fb9ede040ac07149aacbb4a35bc41e70d081"
  end
  version "v0.1.0"
  license "MIT"

  def install
    bin.install "devcleaner"
    ohai "You're done!  Run with \"devcleaner\""
    ohai "For runtime flags, see \"devcleaner --help\""
  end
end