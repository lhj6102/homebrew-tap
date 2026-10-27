class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.18.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.18.3/artifactize-v0.18.3-aarch64-apple-darwin.tar.gz"
      sha256 "f37d2cf13a50303d88bcde730926c5e1fb77f6feb221700f02672d26fbbfcb9e"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.18.3/artifactize-v0.18.3-x86_64-apple-darwin.tar.gz"
      sha256 "53c93943b1a76f5ee923a4562989e5af3055c833f9a1ac666f141e8e9f6cc165"
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
