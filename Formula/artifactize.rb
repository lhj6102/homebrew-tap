class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.11.0/artifactize-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "bebbf5e759f277ca94684023042c418d0a9a697a40cc135b35c12e6b1089c09c"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.11.0/artifactize-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "7740b7ef9449d570641418fea69860e2eddbc5850c0c897f0a68c5e3c6d8e25b"
    end
  end

  def install
    bin.install "artifactize", "artifactize-tools"
  end

  test do
    assert_equal "artifactize #{version}", shell_output("#{bin}/artifactize --version").strip
    assert_equal "artifactize-tools #{version}", shell_output("#{bin}/artifactize-tools --version").strip
    (testpath/"sample.txt").write("artifactize packaging test\n")
    assert_match "artifactize packaging test", shell_output("#{bin}/artifactize-tools read sample.txt")
  end
end
