
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class DevCleaner < Formula
  desc "A tool to search for node_modules an clean the projects selected"
  homepage "https://github.com/DevCleaner/devcleaner"
  if OS.mac?
    url "https://github.com/DevCleaner/devcleaner/releases/download/v0.1.0/devcleaner-macos.tar.gz"
    sha256 "a01314ef5f05f3184efb610bb3a7edeacfcbbf0cbc18ed0f253d8e34d8e81549"
  else
    url "https://github.com/DevCleaner/devcleaner/releases/download/v0.1.0/devcleaner-linux-musl.tar.gz"
    sha256 "ece28fc217db4ae5b64b74a38cd97af98b53d66ba11f7c0de3961bce73e3df06"
  end
  version "v0.1.0"
  license "MIT"

  def install
    bin.install "devcleaner"
    ohai "You're done!  Run with \"devcleaner\""
    ohai "For runtime flags, see \"devcleaner --help\""
  end
end