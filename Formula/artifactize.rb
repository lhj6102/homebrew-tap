class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.18.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.18.0/artifactize-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "e985b2b7f42c2bb92f00fc63e28aed1caac98a1666d5764d846e23a820415953"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.18.0/artifactize-v0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "3bd95a0c5511817c073c9d7f8a5832130b1f78ae6daeb0031fce341369a52e43"
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
