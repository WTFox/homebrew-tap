# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jsonfind < Formula
  desc "jf prints out dotted paths to the given value for a given json file"
  homepage "https://afox.dev/posts/jsonfind"
  version "1.0.2"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wtfox/jsonfind/releases/download/v1.0.2/jsonfind_1.0.2_Darwin_x86_64.tar.gz"
    sha256 "c1208e7b1fedb15202f87c5dcd2aef87eac3d3c8fb9b391aaea332dcfdc24782"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wtfox/jsonfind/releases/download/v1.0.2/jsonfind_1.0.2_Darwin_arm64.tar.gz"
    sha256 "8f134bfab052c79d6e9baa441c8bedce2cd18e2976c8bc7883603f48f4138593"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wtfox/jsonfind/releases/download/v1.0.2/jsonfind_1.0.2_Linux_x86_64.tar.gz"
    sha256 "f6a369564cfbdeaf59ce0ba35e535d6a2c32a4d7003a9815bf313e2665e40795"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/wtfox/jsonfind/releases/download/v1.0.2/jsonfind_1.0.2_Linux_arm64.tar.gz"
    sha256 "902960769de0bed9fc6bf394c9e06c8347198349a5aaa9e7eec5378accc0e599"
  end

  def install
    bin.install "jsonfind"
  end

  test do
    system "#{bin}/jsonfind --help"
  end
end
