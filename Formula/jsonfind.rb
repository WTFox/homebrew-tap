# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Jsonfind < Formula
  desc "A fast and lightweight utility to easily find paths to values in large JSON files."
  homepage "https://afox.dev/posts/jsonfind"
  url "https://github.com/WTFox/jsonfind/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "563b4d8ef0f76b9410e932a16121210a577ee45c5c3bd858c1e6f7c7e6aca9a0"
  license "MIT"

  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "go", "build", *std_go_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test jsonfind`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
