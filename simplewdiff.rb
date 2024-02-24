class Simplewdiff < Formula
  desc "Compare files with word-by-word diffs, and omit unchanged lines. Thin wrapper atop wdiff, grep, and colordiff"
  homepage "https://github.com/yourusername/simplewdiff"
  url "https://github.com/yourusername/simplewdiff/archive/v1.0.0.tar.gz"
  sha256 "your_tar_gz_sha256"

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