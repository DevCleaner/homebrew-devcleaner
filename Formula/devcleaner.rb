
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class DevCleaner < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/DevCleaner/devcleaner"
  if OS.mac?
    url "https://github.com/DevCleaner/devcleaner/releases/download/v0.1.0/devcleaner-macos.tar.gz"
    sha256 "a939ba93aea7e0575c4e2d3fdfd697b98c9bb14f062c169a0913e5e35660886e"
  else
    url "https://github.com/DevCleaner/devcleaner/releases/download/v0.1.0/devcleaner-linux-musl.tar.gz"
    sha256 "c36804520a321aa1ddf396b2f8f188a7c90c62900b70e14536deb220988e8f65"
  end
  version "v0.1.0"
  license "MIT"

  def install
    bin.install "devcleaner"
    ohai "You're done!  Run with \"devcleaner\""
    ohai "For runtime flags, see \"devcleaner --help\""
  end
end