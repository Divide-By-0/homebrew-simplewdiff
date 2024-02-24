class Simplewdiff < Formula
  desc "Compare files with word-by-word diffs, and omit unchanged lines. Thin wrapper atop wdiff, grep, and colordiff"
  homepage "https://github.com/Divide-By-0/simplewdiff"
  url "https://github.com/Divide-By-0/simplewdiff/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "762f4254dcf6a72554dffb29867e440f70b229a087d428a07db75dfc65b35563"

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