
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Devcleaner < Formula
  desc "A tool to search for node_modules an clean the projects selected"
  homepage "https://github.com/DevCleaner/devcleaner"
  if OS.mac?
    url "https://github.com/DevCleaner/devcleaner/releases/download/v0.1.1.beta/devcleaner-macos.tar.gz"
    sha256 "c77cf512d9381fd93fc49a4b87f0cd52a913a29810eaaaa0da17cb5544fc551b"
  else
    url "https://github.com/DevCleaner/devcleaner/releases/download/v0.1.1.beta/devcleaner-linux-musl.tar.gz"
    sha256 "bf0e330aaf1776ef0259bfd399cde4c403a99b2d13a4c503b3935672ee724d49"
  end
  version "v0.1.1.beta"
  license "MIT"

  def install
    bin.install "devcleaner"
    ohai "You're done!  Run with \"devcleaner\""
    ohai "For runtime flags, see \"devcleaner --help\""
  end
end