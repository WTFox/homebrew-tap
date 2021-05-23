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
    sha256 "cfdad9b2416b95c6b8d1ee45adc7454ea5f5347f60ee5bce139fb7499a1ed7a3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wtfox/jsonfind/releases/download/v1.0.2/jsonfind_1.0.2_Darwin_arm64.tar.gz"
    sha256 "69487d0c93cb5b2f2cdec547ee0256462948444159886f5d3b750d0ab04d6585"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wtfox/jsonfind/releases/download/v1.0.2/jsonfind_1.0.2_Linux_x86_64.tar.gz"
    sha256 "2af7f57626fce13772294e07b5f1c51fee5209802b147d3c9b378bd56ca7e83f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/wtfox/jsonfind/releases/download/v1.0.2/jsonfind_1.0.2_Linux_arm64.tar.gz"
    sha256 "9227d56b97a2b74e6b0d4fafee65091bbff72abf926158567985e13f6e4db64a"
  end

  def install
    bin.install "jf"
  end

  test do
    system "#{bin}/jf --help"
  end
end
