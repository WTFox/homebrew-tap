# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jsonfind < Formula
  desc "jf prints out dotted paths to the given value for a given json file"
  homepage "https://afox.dev/posts/jsonfind"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/WTFox/jsonfind/releases/download/v1.1.1/jsonfind_1.1.1_Darwin_arm64.tar.gz"
      sha256 "9301e27273d5dc87e1e9c6c372f2cfc6b8076108fd59db537cdecdcf7dc83704"

      def install
        bin.install "jsonfind" => "jf"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/WTFox/jsonfind/releases/download/v1.1.1/jsonfind_1.1.1_Darwin_x86_64.tar.gz"
      sha256 "960ff25e6f30ccbf6f55072a86566d9d53c5a8cf857b09de891b853731ed47cd"

      def install
        bin.install "jsonfind" => "jf"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/WTFox/jsonfind/releases/download/v1.1.1/jsonfind_1.1.1_Linux_arm64.tar.gz"
      sha256 "8279ddd816befb705d636037dbc700dc5a9e219525f8236c370075e4f33747ec"

      def install
        bin.install "jsonfind" => "jf"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/WTFox/jsonfind/releases/download/v1.1.1/jsonfind_1.1.1_Linux_x86_64.tar.gz"
      sha256 "d5fc9650923cbfce23c6a19e37540c1259dd20c346032765c4d4c693f5235a7b"

      def install
        bin.install "jsonfind" => "jf"
      end
    end
  end

  test do
    system "#{bin}/jf --help"
  end
end
