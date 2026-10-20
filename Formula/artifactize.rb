class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.14.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.14.1/artifactize-v0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "6f3d5dafe089a546c5cb554cce8bfb7ffef7bb34ca3a6a89e6275622516974bd"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.14.1/artifactize-v0.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "98f4f4b610f7394ce0d0c6f631753bd5ade3e1fad3ad2d9dd9aab0c711701fd5"
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
