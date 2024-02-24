class Simplewdiff < Formula
  desc "Compare files with word-by-word diffs, and omit unchanged lines. Thin wrapper atop wdiff, grep, and colordiff"
  homepage "https://github.com/Divide-By-0/simplewdiff"
  url "https://github.com/Divide-By-0/simplewdiff/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "1b263c68773e6e53e35c018f54862aac8b1a1c58e041eb8f88dcb3ca69f191dc"

  # Declare dependencies
  depends_on "wdiff"
  depends_on "colordiff"

  def install
    bin.install "simplewdiff.sh" => "simplewdiff"
  end

  test do
    system "#{bin}/simplewdiff", "--version"
  end
end