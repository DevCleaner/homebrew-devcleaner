
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class DevCleaner < Formula
  desc "A tool to search for node_modules an clean the projects selected"
  homepage "https://github.com/DevCleaner/devcleaner"
  if OS.mac?
    url "https://github.com/DevCleaner/devcleaner/releases/download/v0.1.0/devcleaner-macos.tar.gz"
    sha256 "b2a183a825efb7ab8159c152c2bdd9d31e2f26ece0033d88a53ea17e68fa6e28"
  else
    url "https://github.com/DevCleaner/devcleaner/releases/download/v0.1.0/devcleaner-linux-musl.tar.gz"
    sha256 "680d1a5c839df841e33b950ef1f4e528e2b0fa68e14c4a11d23b1a565a197c4f"
  end
  version "v0.1.0"
  license "MIT"

  def install
    bin.install "devcleaner"
    ohai "You're done!  Run with \"devcleaner\""
    ohai "For runtime flags, see \"devcleaner --help\""
  end
end