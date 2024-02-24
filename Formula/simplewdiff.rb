class Simplewdiff < Formula
  desc "Compare files with word-by-word diffs, and omit unchanged lines. Thin wrapper atop wdiff, grep, and colordiff"
  homepage "https://github.com/Divide-By-0/simplewdiff"
  url "https://github.com/Divide-By-0/simplewdiff/archive/v1.0.0.tar.gz"
  sha256 "d0484ccd5614c4762047beb857104e319a51c2234813923253c73a79d556c675"

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