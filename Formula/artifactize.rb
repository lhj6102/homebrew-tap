class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.16.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.16.1/artifactize-v0.16.1-aarch64-apple-darwin.tar.gz"
      sha256 "2d9776e6b627da88bd8408a3cea329d0599015cf300344275b5bf88f65e1d848"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.16.1/artifactize-v0.16.1-x86_64-apple-darwin.tar.gz"
      sha256 "0fa7775f846f5a3c2dc9b8bb60430a00ca3e250b07378a6a7f47cd1352303112"
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
