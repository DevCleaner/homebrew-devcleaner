
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class DevCleaner < Formula
  desc "A tool to search for node_modules an clean the projects selected"
  homepage "https://github.com/DevCleaner/devcleaner"
  if OS.mac?
    url "https://github.com/DevCleaner/devcleaner/releases/download/v0.1.0/devcleaner-macos.tar.gz"
    sha256 "65f68ddb83e18aa4c4ee085d76133955f35f140fa9926151013f07edb360c5f7"
  else
    url "https://github.com/DevCleaner/devcleaner/releases/download/v0.1.0/devcleaner-linux-musl.tar.gz"
    sha256 "7cbe990a4fc3401bb448619d392e2d725807637d4280cfa50cb1cc78544b31f5"
  end
  version "v0.1.0"
  license "MIT"

  def install
    bin.install "devcleaner"
    ohai "You're done!  Run with \"devcleaner\""
    ohai "For runtime flags, see \"devcleaner --help\""
  end
end